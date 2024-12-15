import 'package:flutter/material.dart';

import '../db/addPet_DAO.dart';
import '../domain/Pets.dart';
import 'cachorro_card.dart';



class Principalcard extends StatefulWidget {
  const Principalcard({super.key});

  @override
  State<Principalcard> createState() => _PrincipalcardState();
}

List<Pet> pet = [];

class _PrincipalcardState extends State<Principalcard> {

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    pet = await addPetDAO().ListaPets();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Adote seu pet'),
        backgroundColor: Colors.lightBlue,
      ),

      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(17.0),
            child: Text(
              'Seja bem-vindo ao Patas Unidas! Conheça o cãozinho que vai alegrar sua vida.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),

          const SizedBox(height: 20,),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: pet.length,
            itemBuilder: (context, Index) {
              return CachorroCard(pet: pet[Index]);
            },
          ),
        ],
      ),
    );
  }
}