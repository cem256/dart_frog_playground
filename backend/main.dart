import 'dart:io';
import 'package:backend/core/config/database.dart';
import 'package:dart_frog/dart_frog.dart';

final DatabaseClient _databaseClient = DatabaseClient.instance;

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  await _databaseClient.connect();

  return serve(handler.use(databaseProvider()), ip, port);
}

Middleware databaseProvider() {
  return provider<DatabaseClient>((context) => _databaseClient);
}
