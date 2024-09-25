import 'package:firebase_auth/firebase_auth.dart';

class autenticacaoLogin {
  loginuser({required String email, required String senha}) async {
    try {
      // Tenta fazer o login com Firebase
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );
      print("Login feito");
    } on FirebaseAuthException catch (e) {
      // Captura o erro específico de autenticação do Firebase
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
      // Lida com outros erros
      print('Erro desconhecido: $e');
      throw Exception('Erro desconhecido.');
    }
  }
}
