import 'package:agora/Menu.dart';
import 'package:agora/Pages/Roteador_page.dart';
import 'package:agora/TentandoDnv.dart';

import 'package:agora/Pages/telaInicial_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MaterialApp(
      home: RoteadorTela(),
    ),
  );
}

class RoteadorTela extends StatelessWidget {
  const RoteadorTela({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.userChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NubankScreen(/*user: snapshot.data!,*/);
        } else {
          return const telaInicial();
        }
      },
    );
  }
}