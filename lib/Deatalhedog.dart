import 'Carddoguinho.dart';
import 'Dadoscachorro.dart';
import 'package:flutter/material.dart';


class Deatalhedog extends StatefulWidget {
  final Dadoscachorro dadoscachorro;


  const Deatalhedog({super.key, required this.dadoscachorro});


  @override
  State<Deatalhedog> createState() => _DeatalhedogState();
}


class _DeatalhedogState extends State<Deatalhedog> {
  Dadoscachorro get dadoscachorro => widget.dadoscachorro;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.network(dadoscachorro.imagem),
        Text(dadoscachorro.nome),
        Text(dadoscachorro.idade),
        Text(dadoscachorro.sexo),
      ],),
    );
  }
}
