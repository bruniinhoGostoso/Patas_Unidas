import 'package:firebase_auth/firebase_auth.dart';

class offUser {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    bool _autenticationUser = true;

  // Getter para _autenticationUser
  bool get autenticacaoUsuario => _autenticationUser;


  Future<void> deslogar() async {
    return await _firebaseAuth.signOut();
  }

  void alterarAutenticacao() {
    _autenticationUser = !_autenticationUser;
  }

}
