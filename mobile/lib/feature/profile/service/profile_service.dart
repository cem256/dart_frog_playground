import 'package:fpdart/fpdart.dart';
import 'package:mobile/core/network/network_exception.dart';
import 'package:mobile/feature/profile/repository/profile_repository.dart';
import 'package:models/models.dart';

class ProfileService {
  ProfileService({required ProfileRepository profileRepository}) : _profileRepository = profileRepository;

  final ProfileRepository _profileRepository;

  Future<Either<FailureModel, UserModel>> fetchProfile() async {
    try {
      final response = await _profileRepository.fetchProfile();
      return right(response);
    } on NetworkException catch (e) {
      return left(FailureModel(message: e.message));
    }
  }
}
