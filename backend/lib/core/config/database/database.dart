import 'package:backend/core/constants/database_constants.dart';
import 'package:mongo_dart/mongo_dart.dart';

class DatabaseClient {
  DatabaseClient._();

  static final DatabaseClient _instance = DatabaseClient._();
  static DatabaseClient get instance => _instance;

  Db? _db;

  Future<void> connect() async {
    if (_db != null) {
      return;
    }
    final db = await Db.create(DatabaseConstants.uriString);
    await db.open();
    _db = db;
  }

  Db? get db => _db;
}
