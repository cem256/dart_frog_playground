class DatabaseConstants {
  DatabaseConstants._();
  static const String dbUser = 'admin';
  static const String dbPassword = 'W4HMAdxW4a7RbM1G';
  static const String dbName = 'dart_frog';
  static const String uriString = '''
mongodb+srv://$dbUser:$dbPassword@cluster0.3dpfzgk.mongodb.net/$dbName?retryWrites=true&w=majority''';
}
