import 'dart:io';

import 'package:backend/api/v1/auth/service/auth_service_impl.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:models/models.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.post) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  } else {
    return _register(context);
  }
}

Future<Response> _register(RequestContext context) async {
  final authService = context.read<AuthServiceImpl>();
  final requestBody = await context.request.json() as Map<String, dynamic>?;
  // Return code 400 if request coming from client is empty
  if (requestBody == null || requestBody.isEmpty) {
    return Response(
      statusCode: HttpStatus.badRequest,
    );
  }
  final userModel = RegisterRequestModel.fromJson(requestBody);
  final registerResponse = await authService.register(userModel);
  // Return code 500 if an exception is caught.
  return registerResponse.fold(
    (error) => Response.json(
      statusCode: HttpStatus.internalServerError,
      body: error.toJson(),
    ),
    // Return code 201 and user information if everthing is fine.
    (created) => Response.json(
      statusCode: HttpStatus.created,
      body: created.toJson(),
    ),
  );
}
