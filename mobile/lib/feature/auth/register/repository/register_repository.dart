import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobile/app/constants/endpoints.dart';
import 'package:mobile/core/network/network_client.dart';
import 'package:mobile/core/network/network_exception.dart';
import 'package:models/models.dart';

class RegisterRepository {
  RegisterRepository({required NetworkClient networkClient}) : _networkClient = networkClient;

  final NetworkClient _networkClient;

  Future<void> register({required RegisterRequestModel request}) async {
    try {
      final response = await _networkClient.post<Map<String, dynamic>>(Endpoints.register, data: request.toJson());
      if (response.statusCode == HttpStatus.created) {
        return;
      }
    } on DioError catch (e) {
      throw NetworkException.fromDioError(e);
    }
  }
}
