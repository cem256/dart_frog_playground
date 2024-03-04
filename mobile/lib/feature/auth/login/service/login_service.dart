import 'package:fpdart/fpdart.dart';
import 'package:mobile/core/network/network_exception.dart';
import 'package:mobile/feature/auth/login/repository/login_repository.dart';
import 'package:models/models.dart';

class LoginService {
  LoginService({required LoginRepository loginRepository}) : _loginRepository = loginRepository;

  final LoginRepository _loginRepository;

  Future<Either<FailureModel, LoginResponseModel>> login({required LoginRequestModel request}) async {
    try {
      final response = await _loginRepository.login(request: request);
      return right(response);
    } on NetworkException catch (e) {
      return left(FailureModel(message: e.message));
    }
  }
}
