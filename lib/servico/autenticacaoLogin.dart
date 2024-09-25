import 'package:firebase_auth/firebase_auth.dart';

class autenticacaoLogin {


  loginuser({required String email, required String senha}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: senha,
      );
      print("Login feito");
    } catch (e) {
      print('Erro: $e');
      // Re-lançar a exceção para que possa ser capturada na tela de login
       // Isso permitirá que o botaoClicado capture o erro
    }
  }
}
