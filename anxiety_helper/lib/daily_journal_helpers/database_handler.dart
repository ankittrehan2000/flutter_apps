import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper{

  static final _databaseName = "JournalEntries";
  static final _tableName = "Entries";
  static final _databaseVersion = 1;

  static final columnId = '_id';
  static final columnTitle = '_title';
  static final columnContent = '_content';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database _database;

  Future<Database> get database async{
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async{
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path,_databaseName);
    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db,int version) async{
    db.execute('''
      CREATE TABLE $_tableName (
      $columnId INTEGER PRIMARY KEY,
      $columnTitle TEXT  NOT NULL,
      $columnContent TEXT NOT NULL
      )
    ''');
  }

  Future<int> insert(Map<String, dynamic> row) async{
    Database db = await instance.database;
    return await db.insert(_tableName,row);
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(_tableName);
  }

}