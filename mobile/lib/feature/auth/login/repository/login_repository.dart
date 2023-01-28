import 'dart:io';

import 'package:exceptions/exceptions.dart';
import 'package:mobile/core/cache/cache_client.dart';
import 'package:mobile/core/constants/endpoints.dart';
import 'package:mobile/core/network/network_client.dart';
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

      if (response.statusCode == HttpStatus.ok) {
        final loginResponse = LoginResponseModel.fromJson(response.data!);
        await _cacheClient.setAccessToken(accessToken: loginResponse.accessToken);
        return loginResponse;
      } else if (response.statusCode == HttpStatus.internalServerError) {
        throw InternalServerErrorException(message: response.data!['message'] as String);
      } else if (response.statusCode == HttpStatus.badRequest) {
        throw BadRequestException();
      } else {
        throw UnknownException();
      }
    } catch (e) {
      rethrow;
    }
  }
}
