import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

class DatabaseCreator{
  static final _dbName = "VitaminTracker.db";
  static final _ver = 1;

  static final table = "TrackerTable";
  static final columnProtein = '_protein';

  DatabaseCreator._privateConstructor();
  static final DatabaseCreator instance = DatabaseCreator._privateConstructor();

  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async{
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _dbName);
    return await openDatabase(path,
        version: _ver,
        onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async{
    await db.execute("CREATE TABLE $table ( $columnProtein INTEGER )");
  }

  static Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(table, row);
  }
}

