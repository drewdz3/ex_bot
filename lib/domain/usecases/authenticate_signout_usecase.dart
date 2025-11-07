import 'package:either_dart/either.dart';
import 'package:ex_bot/core/errors/failures.dart';
import 'package:ex_bot/core/use_case.dart';
import 'package:ex_bot/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

abstract class AuthenticateSignoutUseCase extends UseCase<bool, NoParams> {}

@Injectable(as: AuthenticateSignoutUseCase)
class AuthenticateSignoutUseCaseImpl implements AuthenticateSignoutUseCase {
  final AuthRepository _authRepository;

  AuthenticateSignoutUseCaseImpl(this._authRepository);

  @override
  Future<Either<Failure, bool>> executeAsync({required NoParams params}) async {
    //  see if we have a refresh token
    //  invoke the appropriate authentication method
    //  store tokens
    //  store the user
    //  return status
    return Left(Failure.unknownFailure(message: 'Not implemented yet'));
  }
}
