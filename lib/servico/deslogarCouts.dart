import 'package:firebase_auth/firebase_auth.dart';

class offUser {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> deslogar() async {
    return _firebaseAuth.signOut();
  }
}
