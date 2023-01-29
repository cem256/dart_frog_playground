import 'dart:io';

import 'package:backend/api/v1/auth/login/service/login_service.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:models/models.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  } else {
    return _login(context);
  }
}

Future<Response> _login(RequestContext context) async {
  final loginService = context.read<LoginService>();
  final userModel = LoginRequestModel.fromJson(await context.request.json() as Map<String, dynamic>);

  final loginResponse = await loginService.login(userModel);
  // Return code 500 if an exception is caught.
  return loginResponse.fold(
    (error) => Response.json(
      statusCode: HttpStatus.internalServerError,
      body: error.toJson(),
    ),
    // Return code 200, user information, access and refresh tokens if everthing is fine.
    (success) => Response.json(
      body: success.toJson(),
    ),
  );
}
