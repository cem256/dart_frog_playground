import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mobile/app/constants/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkClient {
  NetworkClient() {
    dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseUrl,
        contentType: 'application/json',
      ),
    );
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
        ),
      );
    }
  }
  late final Dio dio;
}
