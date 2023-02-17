import 'package:backend/api/v1/auth/register/repository/register_repository.dart';
import 'package:backend/core/exceptions/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:models/models.dart';

class RegisterService {
  RegisterService({required RegisterRepository registerRepository}) : _registerRepository = registerRepository;

  final RegisterRepository _registerRepository;

  Future<Either<FailureModel, void>> register(RegisterRequestModel request) async {
    try {
      final result = await _registerRepository.register(request);
      return right(result);
    } on UserExistsException catch (e) {
      return left(FailureModel(message: e.message));
    } on DataInsertException catch (e) {
      return left(FailureModel(message: e.message));
    } on DatabaseConnectionException catch (e) {
      return left(FailureModel(message: e.message));
    } catch (_) {
      return left(const FailureModel(message: UnknownException.message));
    }
  }
}
