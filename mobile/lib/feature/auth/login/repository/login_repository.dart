import 'package:dio/dio.dart';
import 'package:mobile/app/constants/endpoints.dart';
import 'package:mobile/core/cache/cache_client.dart';
import 'package:mobile/core/network/network_client.dart';
import 'package:mobile/core/network/network_exception.dart';
import 'package:models/models.dart';

class LoginRepository {
  LoginRepository({required NetworkClient networkClient, required CacheClient cacheClient})
      : _networkClient = networkClient,
        _cacheClient = cacheClient;

  final NetworkClient _networkClient;
  final CacheClient _cacheClient;

  Future<LoginResponseModel> login({required LoginRequestModel request}) async {
    try {
      final response = await _networkClient.post<Map<String, dynamic>>(Endpoints.login, data: request.toJson());

      final loginResponse = LoginResponseModel.fromJson(response.data!);
      await _cacheClient.setAccessToken(accessToken: loginResponse.accessToken);
      return loginResponse;
    } on DioException catch (e) {
      throw NetworkException.fromDioError(e);
    }
  }
}
