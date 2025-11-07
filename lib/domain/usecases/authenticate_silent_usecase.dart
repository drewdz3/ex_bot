import 'package:either_dart/src/either.dart';
import 'package:ex_bot/core/constants/app_constants.dart';
import 'package:ex_bot/core/utils/auth_mapper.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/datasources/appauth_datasource.dart';
import 'package:ex_bot/data/datasources/auth_storage_datasource.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/core/use_case.dart';
import 'package:ex_bot/data/models/app_user.dart';

abstract class AuthenticateSilentUseCase extends UseCase<AppUser, NoParams> {}

@Injectable(as: AuthenticateSilentUseCase)
class AuthenticateSilentUseCaseImpl implements AuthenticateSilentUseCase {
  final AuthStorageDatasource _authStorage;
  final AppAuthDataSource _appAuthDataSource;
  final UserRepository _userRepository;

  AuthenticateSilentUseCaseImpl(this._authStorage, this._appAuthDataSource, this._userRepository);

  @override
  Future<Either<Failure, AppUser>> executeAsync({required NoParams params}) async {
    try {
      DebugLogger.info('(AuthenticateSilentUseCase.executeAsync) Attempting to refresh tokens...');

      // Try silent sign-in with refresh token
      final refreshToken = await _authStorage.getRefreshTokenIfValid();
      if (refreshToken == null) {
        const failure = Failure.authFailure(message: 'No refresh token available');
        return Left(failure);
      }

      final authResult = await _appAuthDataSource.signInSilent(refreshToken);
      if (authResult == null) {
        const failure = Failure.authFailure(message: 'Token refresh failed');
        return Left(failure);
      }

      var authUser = authResultToAppUser(authResult);
      if (authUser.id.isEmpty) {
        const failure = Failure.authFailure(message: 'Failed to map auth result to user');
        return Left(failure);
      }

      // get the user from the database
      var user = await _userRepository.getUser(authUser.id);
      if (user == null) {
        _authStorage.clearRefreshToken();
        const failure = Failure.authFailure(message: 'No user data found');
        return Left(failure);
      }
      user = user.copyWith(lastLoginAt: DateTime.now());

      // Save refreshed tokens
      await _userRepository.updateUser(user);

      // save refresh token
      await _authStorage.saveRefreshToken(
        expiresOn: authResult.accessTokenExpirationDateTime ?? DateTime.now().add(const Duration(hours: 1)),
        refreshToken: authResult.refreshToken ?? AppConstants.emptyString,
      );

      DebugLogger.success('(AuthenticateSilentUseCase.executeAsync) Tokens refreshed successfully');
      return Right(user);
    } catch (e) {
      DebugLogger.error('(AuthenticateSilentUseCase.executeAsync) Token refresh failed: $e');
      final failure = Failure.authFailure(message: 'Token refresh failed: ${e.toString()}');
      return Left(failure);
    }
  }
}
