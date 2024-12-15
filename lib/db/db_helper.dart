import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {

  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, "cachorroCadastro.db");

    Database dbb = await openDatabase(dbPath,
        version: 1,
        onCreate: onCreate
    );
    return dbb;
  }

}

Future<FutureOr<void>> onCreate(Database db, int version) async {

  String sql = 'CREATE TABLE CACHORROS (id INTEGER PRIMARY KEY, nome varchar(100), sexo varchar(20), idade INTEGER, localizacao varchar(150), imagem varchar(150));';
  await db.execute(sql);

  sql = "INSERT INTO CACHORROS (nome, sexo, idade, localizacao, imagem) VALUES ('branquinho','Masculino',1,'Arapiraca-AL','')";
  await db.execute(sql);
}

