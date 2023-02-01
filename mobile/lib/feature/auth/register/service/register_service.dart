import 'package:dartz/dartz.dart';
import 'package:mobile/core/network/network_exception.dart';
import 'package:mobile/feature/auth/register/repository/register_repository.dart';
import 'package:models/models.dart';

class RegisterService {
  RegisterService({required RegisterRepository registerRepository}) : _registerRepository = registerRepository;

  final RegisterRepository _registerRepository;

  Future<Either<FailureModel, void>> register({required RegisterRequestModel request}) async {
    try {
      final response = await _registerRepository.register(request: request);
      return right(response);
    } on NetworkException catch (e) {
      return left(FailureModel(message: e.message));
    }
  }
}
