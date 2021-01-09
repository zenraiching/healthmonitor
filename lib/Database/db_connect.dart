import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseConnection {
  setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_med');
    var database = await openDatabase(path, version: 1, onCreate: _onCreateDB);
    return database;
  }

  _onCreateDB(Database database, int version) async {
    await database.execute("""
    DROP TABLE IF EXISTS tbl_medicine;
CREATE TABLE tbl_medicine
(id int NOT NULL PRIMARY KEY,
medicine_name text NOT NULL,
dosage int NOT NULL,
units text NOT NULL,
interval int NOT NULL,
time timestamp NOT NULL);
    """);
  }
}
