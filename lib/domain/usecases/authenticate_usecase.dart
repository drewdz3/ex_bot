import 'package:either_dart/either.dart';
import 'package:either_dart/src/either.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/core/use_case.dart';
import 'package:ex_bot/core/utils/auth_mapper.dart';
import 'package:ex_bot/core/utils/debug_logger.dart';
import 'package:ex_bot/data/models/app_user.dart';
import 'package:ex_bot/data/models/auth_result.dart';
import 'package:ex_bot/domain/repositories/auth_repository.dart';
import 'package:ex_bot/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

abstract class AuthenticateUseCase extends UseCase<AppUser, NoParams> {}

@Injectable(as: AuthenticateUseCase)
class AuthenticateUseCaseImpl implements AuthenticateUseCase {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  AuthenticateUseCaseImpl(this._authRepository, this._userRepository);

  @override
  Future<Either<Failure, AppUser>> executeAsync({required NoParams params}) async {
    try {
      //  attempt silent authentication
      var authResult = await _authRepository.refreshTokens();
      if (authResult.isRight) {
        //  tokens refreshed, update the user
        DebugLogger.info('(AuthenticateUseCase.executeAsync) Silent authentication succeeded.');
        var appUser = await updateUser(authResult.right);
        if (appUser == null) {
          DebugLogger.error('(AuthenticateUseCase.executeAsync) Failed to update user after silent authentication.');
          return Left(Failure.authFailure(message: 'Failed to update user after silent authentication.'));
        }
        return Right(appUser);
      }

      //  this is fine, we'll have to go interactive next
      DebugLogger.debug('(AuthenticateUseCase.executeAsync) Silent authentication failed: ${authResult.left.message}');

      //  invoke interactive authentication
      authResult = await _authRepository.signIn();
      if (authResult.isLeft) {
        DebugLogger.error(
          '(AuthenticateUseCase.executeAsync) Interactive authentication failed: ${authResult.left.message}',
        );
        return Left(authResult.left);
      }

      DebugLogger.success('(AuthenticateUseCase.executeAsync) Interactive authentication succeeded.');
      //  update the user
      var appUser = await updateUser(authResult.right);
      if (appUser == null) {
        DebugLogger.error('(AuthenticateUseCase.executeAsync) Failed to update user after interactive authentication.');
        return Left(Failure.authFailure(message: 'Failed to update user after interactive authentication.'));
      }
      //  return status
      return Right(appUser);
    } catch (e) {
      return Left(Failure.unknownFailure(message: e.toString()));
    }
  }

  Future<AppUser?> updateUser(AuthResult authResult) async {
    //  get the user from the auth result
    var appUser = authResultToAppUser(authResult);
    if (appUser.id.isEmpty) {
      DebugLogger.error('(AuthenticateUseCase.updateUser) Failed to map auth result to user.');
      return null;
    }
    //  check if we have a record for this user
    var user = await _userRepository.getUser(appUser.id);
    if (user == null) {
      //  new user, create record
      user = appUser.copyWith(createdAt: DateTime.now(), lastLoginAt: DateTime.now());
      await _userRepository.updateUser(user);
      DebugLogger.info('(AuthenticateUseCase.updateUser) Created new user record for ${user.id}.');
    } else {
      //  existing user, update record
      user = user.copyWith(email: appUser.email, displayName: appUser.displayName, lastLoginAt: DateTime.now());
      await _userRepository.updateUser(user);
      DebugLogger.info('(AuthenticateUseCase.updateUser) Updated user record for ${user.id}.');
    }
    return user;
  }
}
