
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:patas/PagesCadastroLogin/newLoginPage.dart';

import '../PagesCadastroLogin/cadastro_page.dart';

class telaInicial extends StatefulWidget {
  const telaInicial({super.key});

  @override
  State<telaInicial> createState() => _telaInicialState();
}

class _telaInicialState extends State<telaInicial> {
  @override
  void navegarTelaCadastro() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const novaTelaEntrar();
      }),
    );
  }

void navegarTelaLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return LoginForm(); //TelaLogin();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            texto("Adoção", "Fazer o bem Espalhar o amor", Colors.white, 23),
            texto(
                "pets", " Pomerânia " "  Bulldog Francês.", Colors.white, 25),
            texto("Cuidados", "Amor Carinho Compaixão", Colors.white, 25),
            texto("Amor", "Cuide Bem do seu Pete ", Colors.white, 25),
            texto("Carinho", "Seu companheiro mais fiel ", Colors.white, 25),
            texto("Doação para os Caos", "Aj", Colors.grey.shade100, 23),
            const SizedBox(
              height: 10,
            ),
            texto("Sempre há uma forma para\nvocê fazer o bem no\nPatas Unidas",
                "", Colors.black, 17),
            Container(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 bz(navegarTelaLogin, Colors.white10, "Fazer Login",
                 Colors.white),
                bz(navegarTelaCadastro, Colors.white, "Cadastra-se",
                    Colors.black),
              ],
            ),
          ],
        ));
  }
}

Widget texto(String text, String text2, Color col, double s) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Text(
          text,
          style: GoogleFonts.martianMono(
              color: col, fontSize: s, fontWeight: FontWeight.bold),
        ),
      ),
      Text(
        text2,
        style: GoogleFonts.nerkoOne(
            color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 18),
      )
    ],
  );
}

Widget bz(Function pressionado, Color cor, String txt, Color corTxt) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 25),
    child: ElevatedButton(
      onPressed: () => pressionado(),
      style: ElevatedButton.styleFrom(
        backgroundColor: cor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomRight: Radius.circular(4),
          ),
        ),
      ),
      child: Text(
        txt,
        style: TextStyle(color: corTxt),
      ),
    ),
  );
}