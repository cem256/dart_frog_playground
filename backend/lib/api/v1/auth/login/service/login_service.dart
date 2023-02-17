import 'package:backend/api/v1/auth/login/repository/login_repository.dart';
import 'package:backend/core/exceptions/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:models/models.dart';

class LoginService {
  LoginService({required LoginRepository loginRepository}) : _loginRepository = loginRepository;

  final LoginRepository _loginRepository;

  Future<Either<FailureModel, LoginResponseModel>> login(LoginRequestModel request) async {
    try {
      final user = await _loginRepository.login(request);
      return right(user);
    } on InvalidCredentialsException catch (e) {
      return left(FailureModel(message: e.message));
    } catch (_) {
      return left(const FailureModel(message: UnknownException.message));
    }
  }
}
