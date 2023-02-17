import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../../routes/api/v1/profile/index.dart' as route;

class _MockRequestContext extends Mock implements RequestContext {}

void main() {
  test('Responds with HttpStatus.methodNotAllowed when method is not GET.', () async {
    final request = Request('POST', Uri.parse('http://localhost:8080/'));
    final context = _MockRequestContext();
    when(() => context.request).thenReturn(request);
    final response = await route.onRequest(context);
    expect(response.statusCode, equals(HttpStatus.methodNotAllowed));
  });
}
