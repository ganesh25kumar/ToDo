import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_do_app/ui/database/tables.dart';

class DatabaseHelper {
  static DatabaseHelper? databaseHelper;
  static Database? _database;
  DatabaseHelper.createInstance();

  factory DatabaseHelper() {
    (databaseHelper == null)
        ? databaseHelper = DatabaseHelper.createInstance()
        : null;
    return databaseHelper as DatabaseHelper;
  }

  Future<Database?> get database async {
    (_database == null) ? _database = await initialiseDatabase() : null;
    return _database;
  }

  Future<Database> initialiseDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = '${directory.path}todoapp.db';
    var appDatabase = await openDatabase(path, version: 2, onCreate: createDbs);
    return appDatabase;
  }

  void createDbs(Database db, int newVersion) async {
    await db.execute('CREATE TABLE ${Tables.titles}(title TEXT PRIMARY KEY, '
        '${TitlesFields.title}TEXT,'
        '${TitlesFields.content}TEXT,'
        '${TitlesFields.images}BLOB'
        ')');
  }
}
