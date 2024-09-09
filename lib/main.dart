import 'package:agora/Report.dart';
import 'package:agora/Pages/cadastro_page.dart';
import 'package:agora/telaCachorro.dart';
import 'package:agora/Pages/telaInicial_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


import 'package:flutter/material.dart';
import 'Pages/Login_Page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MaterialApp(
        home: telaInicial()
    ),
  );
}

