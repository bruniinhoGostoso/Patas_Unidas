import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class Db_helper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, "cachorro.db");
    Database database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
    );
    print(dbPath);
    return database;
  }
  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'CREATE TABLE CACHORROO (id INTEGER PRIMARY KEY AUTOINCREMENT, nome varchar(100), imagem varchar(100),personalidade varchar(100))';
    await db.execute(sql);
  }}
