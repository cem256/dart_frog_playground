import 'dart:io';

import 'package:backend/api/v1/profile/service/profile_service.dart';
import 'package:backend/core/utils/jwt_utils.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  } else {
    return _getUserProfile(context);
  }
}

Future<Response> _getUserProfile(RequestContext context) async {
  final profileService = context.read<ProfileService>();

  final accessToken = context.request.headers['Authorization']?.split(' ').last;
  if (accessToken != null && JWTUtils.verifyAccessToken(accessToken: accessToken)) {
    final response = await profileService.getUserProfile(accessToken);
    // Return code 500 if an exception is caught.
    return response.fold(
      (error) => Response.json(
        statusCode: HttpStatus.internalServerError,
        body: error.toJson(),
      ),
      // Return code 200, user information if everthing is fine.
      (success) => Response.json(
        body: success.toJson(),
      ),
    );
  } else {
    // Return code 401 if token is invalid or null
    return Response.json(statusCode: HttpStatus.unauthorized);
  }
}
