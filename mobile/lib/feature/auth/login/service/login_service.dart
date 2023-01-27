import 'package:mobile/feature/auth/login/repository/login_repository.dart';

class LoginService {
  LoginService({required LoginRepository loginRepository}) : _loginRepository = loginRepository;

  final LoginRepository _loginRepository;

  // Future<Either<Failure,LoginResponseModel>> login({required LoginRequestModel request}){

  // }

}

class Failure {}
