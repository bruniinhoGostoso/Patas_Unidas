import 'package:firebase_auth/firebase_auth.dart';

class autenticacaoservico {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  cadastrarUsuario({
    required String nome,
    required String email,
    required String senha,
  }) {
    try {
      _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: senha,

      );
      print("Cadastrado");
      // Aqui você pode salvar o nome do usuário no perfil, por exemplo.
    } catch (e) {
      print("Erro ao cadastrar usuário: $e");
      // Mostre uma mensagem de erro ao usuário ou trate de outra forma.
    }  }
}



