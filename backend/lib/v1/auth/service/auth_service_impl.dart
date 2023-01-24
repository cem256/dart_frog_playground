import 'package:backend/core/exceptions/exceptions.dart';
import 'package:backend/core/failures/failure.dart';
import 'package:backend/v1/auth/repository/auth_repository.dart';
import 'package:backend/v1/auth/service/auth_service.dart';
import 'package:dartz/dartz.dart';
import 'package:models/models.dart';

class AuthServiceImpl implements AuthService {
  AuthServiceImpl({required this.authRepository});

  final AuthRepository authRepository;
  @override
  Future<LoginResponseModel> login(LoginRequestModel request) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserModel>> register(RegisterRequestModel request) async {
    try {
      final user = await authRepository.register(request);
      return right(user);
    } on UserAlreadyExistsException catch (_) {
      return left(const Failure.userAlreadyExistsFailure());
    } on DataInsertException catch (_) {
      return left(const Failure.dataInsertFailure());
    } on DatabaseConnectionException catch (_) {
      return left(const Failure.databaseConnectionFailure());
    } catch (_) {
      return left(const Failure());
    }
  }
}
