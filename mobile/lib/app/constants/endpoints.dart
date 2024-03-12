import 'dart:io';

abstract final class Endpoints {
  Endpoints._();

  static String baseUrl = Platform.isAndroid ? 'http://10.0.2.2:8080/api/v1/' : 'http://localhost:8080/api/v1/';
  static const String login = 'auth/login';
  static const String register = 'auth/register';
  static const String profile = 'profile';
}
