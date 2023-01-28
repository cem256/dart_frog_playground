import 'package:backend/api/v1/auth/login/repository/login_repository.dart';

import 'package:dartz/dartz.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failure/failure.dart';
import 'package:models/models.dart';

class LoginService {
  LoginService({required this.loginRepository});

  final LoginRepository loginRepository;

  Future<Either<Failure, LoginResponseModel>> login(LoginRequestModel request) async {
    try {
      final user = await loginRepository.login(request);
      return right(user);
    } on InvalidCredentialsException catch (_) {
      return left(const Failure(message: InvalidCredentialsException.message));
    } catch (_) {
      return left(const Failure(message: UnknownException.message));
    }
  }
}
