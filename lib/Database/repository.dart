import 'package:healthmonitor/database/db_connect.dart';

class Repository {
  DatabaseConnection _dbConnection;
  Repository() {
    _dbConnection = DatabaseConnection();
  }
  static Database _database;
}
