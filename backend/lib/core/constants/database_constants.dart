class DatabaseConstants {
  DatabaseConstants._();
  static const String _dbUser = 'admin';
  static const String _dbPassword = 'W4HMAdxW4a7RbM1G';
  static const String _dbName = 'dart_frog';
  static const String uriString = '''
mongodb+srv://$_dbUser:$_dbPassword@cluster0.3dpfzgk.mongodb.net/$_dbName?retryWrites=true&w=majority''';
}
