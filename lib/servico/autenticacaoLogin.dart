import 'package:firebase_auth/firebase_auth.dart';

class autenticacaoLogin {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  late final User user;

  loginuser({required String email, required String senha}) async {
    try {
      // Tenta fazer o login com Firebase
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );
      print("Login feito");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('Usuário não encontrado.');
        throw Exception('Usuário não encontrado.');
      } else if (e.code == 'wrong-password') {
        print('Senha incorreta.');
        throw Exception('Senha incorreta.');
      } else {
        print('Erro: ${e.message}');
        throw Exception(e.message);
      }
    } catch (e) {
      print('Erro desconhecido: $e');
      throw Exception('Erro desconhecido.');
    }
  }

  //

  Future<String?> logarUsuarios(
      {required String email, required String senha}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: senha);
      return null;
    } on FirebaseException catch (e) {
      return e.message;
    }
  }
}
