import 'package:agora/Pages/telaInicial_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Menu.dart';
import '../db/sharedPrefs.dart';
import '../servico/deslogarCouts.dart';

class RoteadorPage extends StatefulWidget {
  const RoteadorPage({super.key});

  @override
  State<RoteadorPage> createState() => _RoteadorPageState();
}
offUser _of = offUser();

class _RoteadorPageState extends State<RoteadorPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(future: SharedPrefs().getUser(), builder: (context, snapshot){
      if(!snapshot.hasData){

        return Center(child: CircularProgressIndicator());
        _of.deslogar();
      }else if(snapshot.hasData == true && FirebaseAuth.instance.currentUser != null){
        return NubankScreen();

      }
      return telaInicial();

    });
  }
}
