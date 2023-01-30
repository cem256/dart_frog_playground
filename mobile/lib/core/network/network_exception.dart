import 'dart:io';

import 'package:dio/dio.dart';
import 'package:models/models.dart';

class NetworkException implements Exception {
  NetworkException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = 'Request was cancelled';
        break;
      case DioErrorType.connectTimeout:
        message = 'Connection timed out';
        break;
      case DioErrorType.receiveTimeout:
        message = 'Receiving timeout occurred';
        break;
      case DioErrorType.sendTimeout:
        message = 'Request send timeout';
        break;
      case DioErrorType.response:
        message = _handleStatusCode(
          dioError.response?.statusCode,
          dioError.response?.data as Map<String, dynamic>,
        );
        break;
      case DioErrorType.other:
        if (dioError.error is SocketException) {
          message = 'No Internet.';
          break;
        }
        message = 'Unexpected error occurred';
        break;
    }
  }
  late final String message;

  String _handleStatusCode(int? statusCode, Map<String, dynamic> errorBody) {
    switch (statusCode) {
      case 400:
        return 'Bad Request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return 'Not Found';
      case 405:
        return 'Method Not Allowed';
      case 415:
        return 'Unsupported Media Type';
      case 422:
        return 'Unprocessable Entity';
      case 429:
        return 'Too Many Requests';
      case 500:
        return FailureModel.fromJson(errorBody).message;
      default:
        return 'Unknown Error';
    }
  }
}
