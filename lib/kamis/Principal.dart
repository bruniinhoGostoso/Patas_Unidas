import 'package:flutter/material.dart';
import 'package:projetinhoo/Dadoscachorro.dart';
import 'Carddoguinho.dart';


class Principal extends StatefulWidget {
  const Principal({super.key});
  @override
  State<Principal> createState() => _PrincipalState();
}
class _PrincipalState extends State<Principal> {
  List<Dadoscachorro> cachorrinho = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de cachorros'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cachorrinho.length,
            itemBuilder: (context, i) {
              return Carddoguinho(
                dadoscachorro: cachorrinho[i],
              );
            },
          )
      ),
    );
  }
