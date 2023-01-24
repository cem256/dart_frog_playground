import 'dart:io';

import 'package:backend/v1/auth/service/auth_service_impl.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:models/models.dart';

Future<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.post:
      return _post(context);
    case HttpMethod.delete:
    case HttpMethod.get:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _post(RequestContext context) async {
  final authService = context.read<AuthServiceImpl>();
  final requestBody = await context.request.json() as Map<String, dynamic>?;
  // Return code 400 if request coming from client is empty
  if (requestBody == null || requestBody.isEmpty) {
    return Response(
      statusCode: HttpStatus.badRequest,
    );
  }
  final userModel = LoginRequestModel.fromJson(requestBody);
  final loginResponse = await authService.login(userModel);
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
