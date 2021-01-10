import 'package:healthmonitor/database/db_connect.dart';
import 'package:sqflite/sqlite_api.dart';

class Repository {
  DatabaseConnection _dbConnection;
  Repository() {
    _dbConnection = DatabaseConnection();
  }
  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _dbConnection.setDatabase();
    return _database;

    insertData(table, data) async {
      var connection = await database;
    }
  }
}
