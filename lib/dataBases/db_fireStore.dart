import 'package:firebase_core/firebase_core.dart';

class DbFirestore {

  DbFirestore._();

  static final DbFirestore _instance = DbFirestore._();
  /*FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static FirebaseFirestore get() {
    return DbFirestore._instance._firestore;
  }*/
}