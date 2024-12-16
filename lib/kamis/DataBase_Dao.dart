import 'package:projetinhoo/Dadoscachorro.dart';
import 'package:projetinhoo/Db_helper.dart';
import 'package:sqflite/sqflite.dart';


class DbDao {
  Future<void> saveCachrro(Dadoscachorro cachorro) async {
    Database db = await Db_helper().initDB();
    db.insert('cachorroo', cachorro.toJson());
  }
  Future<List<Dadoscachorro>> listarCachrro() async {
    Database db = await Db_helper().initDB();
    String sql = 'SELECT * FROM CACHORROO;';
    var result = await db.rawQuery(sql);
    List<Dadoscachorro> lista = [];
    for (var json in result) {
      Dadoscachorro cachorro = Dadoscachorro.fromJson(json);
      lista.add(cachorro);
    }
    return lista;
  }
}
