import 'package:dartz/dartz.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failure/failure.dart';
import 'package:mobile/feature/auth/login/repository/login_repository.dart';
import 'package:models/models.dart';

class LoginService {
  LoginService({required LoginRepository loginRepository}) : _loginRepository = loginRepository;

  final LoginRepository _loginRepository;

  Future<Either<Failure, LoginResponseModel>> login({required LoginRequestModel request}) async {
    try {
      final response = await _loginRepository.login(request: request);
      return right(response);
    } on InternalServerErrorException catch (e) {
      return left(Failure(message: e.message));
    } on BadRequestException catch (_) {
      return left(const Failure(message: BadRequestException.message));
    } catch (_) {
      return left(const Failure(message: UnknownException.message));
    }
  }
}
