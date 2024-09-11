import 'package:fzbill/core/constants/sqflite_constants.dart';
import 'package:sqflite/sqflite.dart';

Database? db;

class DatabaseHelper {
  Future<void> initDatabase() async {
    final path = await getDatabasesPath();
    db = await openDatabase(
      '$path/allTables.db',
      version: 1,
      onCreate: (db, version) async {
        await db.execute("PRAGMA foreign_keys = ON");
        await createTables(db: db);
      },
    );
  }

  Future<void> createTables({required Database db}) async {
    await db.execute('''
         CREATE TABLE ${SqfliteConstants.itemTable} (
         id INTEGER PRIMARY KEY AUTOINCREMENT,
         itemName TEXT, 
         itemPrice REAL,
         priority INTEGER
         )''');
  }
}
