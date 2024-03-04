import 'package:dio/dio.dart';
import 'package:mobile/app/constants/endpoints.dart';
import 'package:mobile/core/network/network_client.dart';
import 'package:mobile/core/network/network_exception.dart';
import 'package:models/models.dart';

class ProfileRepository {
  ProfileRepository({required NetworkClient networkClient}) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  Future<UserModel> fetchProfile() async {
    try {
      final response = await _networkClient.get<Map<String, dynamic>>(Endpoints.profile);
      final profileResponse = UserModel.fromJson(response.data!);

      return profileResponse;
    } on DioException catch (e) {
      throw NetworkException.fromDioError(e);
    }
  }
}
