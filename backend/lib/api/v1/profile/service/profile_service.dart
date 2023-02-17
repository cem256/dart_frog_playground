import 'package:backend/api/v1/profile/repository/profile_repository.dart';
import 'package:backend/core/exceptions/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:models/models.dart';

class ProfileService {
  ProfileService({required ProfileRepository profileRepository}) : _profileRepository = profileRepository;

  final ProfileRepository _profileRepository;

  Future<Either<FailureModel, UserModel>> getUserProfile(String accessToken) async {
    try {
      final result = await _profileRepository.getUserProfile(accessToken);
      return right(result);
    } on NoUserFoundException catch (e) {
      return left(FailureModel(message: e.message));
    } on DatabaseConnectionException catch (e) {
      return left(FailureModel(message: e.message));
    } catch (_) {
      return left(const FailureModel(message: UnknownException.message));
    }
  }
}
