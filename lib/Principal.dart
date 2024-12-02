import 'package:flutter/material.dart';
import 'Bancodedados.dart';
import 'Carddoguinho.dart';


class Principal extends StatefulWidget {
  const Principal({super.key});


  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de cachorros'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Bancodedados().dados.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: index == 0 ? 20.0 : 0.0),
              child: Column(
                children: [
                  Carddoguinho(
                    dadoscachorro: Bancodedados().dados[index],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


