import 'package:agora/NubankScreen.dart';
import 'package:agora/Report.dart';
import 'package:agora/PagesCadastroLogin/cadastro_page.dart';
import 'package:agora/TentandoDnv.dart';
import 'package:agora/telaCachorro.dart';
import 'package:agora/Pages/telaInicial_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';
import 'PagesCadastroLogin/Login_Page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MaterialApp(
      home: Tentandodnv(),
    ),
  );
}

class RoteadorTela extends StatefulWidget {
  const RoteadorTela({super.key});

  @override
  State<RoteadorTela> createState() => _RoteadorTelaState();
}

class _RoteadorTelaState extends State<RoteadorTela> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.userChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NubankScreen();
        } else {
          return telaInicial();
        }
      },
    );
  }
}
