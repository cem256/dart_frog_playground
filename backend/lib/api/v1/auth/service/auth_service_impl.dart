import 'package:backend/api/v1/auth/repository/auth_repository.dart';
import 'package:backend/api/v1/auth/service/auth_service.dart';
import 'package:backend/core/exceptions/exceptions.dart';
import 'package:backend/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:models/models.dart';

class AuthServiceImpl implements AuthService {
  AuthServiceImpl({required this.authRepository});

  final AuthRepository authRepository;
  @override
  Future<Either<Failure, LoginResponseModel>> login(LoginRequestModel request) async {
    try {
      final user = await authRepository.login(request);
      return right(user);
    } on InvalidCredentialsException catch (_) {
      return left(const Failure.invalidCredentialsFailure());
    } catch (_) {
      return left(const Failure());
    }
  }

  @override
  Future<Either<Failure, UserModel>> register(RegisterRequestModel request) async {
    try {
      final user = await authRepository.register(request);
      return right(user);
    } on UserAlreadyRegisteredException catch (_) {
      return left(const Failure.userAlreadyRegisteredFailure());
    } on DataInsertException catch (_) {
      return left(const Failure.dataInsertFailure());
    } on DatabaseConnectionException catch (_) {
      return left(const Failure.databaseConnectionFailure());
    } catch (_) {
      return left(const Failure());
    }
  }
}
