import 'package:patas/domain/Pets.dart';
import 'package:sqflite/sqflite.dart';

import 'db_helper.dart';

class addPetDAO {
  Future<List<Pet>> ListaPets() async {
    Database db = await DBHelper().initDB();
    String sql = 'SELECT * FROM CACHORROS;';

    var result = await db.rawQuery(sql);

    List<Pet> lista = [];

    for (var json in result) {
      Pet pet = Pet.fromJson(json);
      lista.add(pet);
    }
    return lista;
  }

  Future<void> addPet(Pet pet) async {
    Database db = await DBHelper().initDB();

    db.insert("CACHORROS", pet.toJson());
  }

  Future<List<Map<String, dynamic>>> getAllUsers() async {
    Database db = await DBHelper().initDB();
    String sql = '''
      SELECT * FROM CACHORROS;
    ''';
    return await db.rawQuery(sql);
  }
}
