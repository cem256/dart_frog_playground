import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../routes/index.dart' as route;

class _MockRequestContext extends Mock implements RequestContext {}

void main() {
  test('Responds with HttpStatus.noContent', () {
    final context = _MockRequestContext();
    final response = route.onRequest(context);
    expect(response.statusCode, equals(HttpStatus.noContent));
  });
}
