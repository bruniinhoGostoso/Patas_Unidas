
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patas/petss/pet_card.dart';
import 'package:patas/petss/pet_controller.dart';

import 'domain/Pets.dart';

class Tentandodnv extends StatefulWidget {
  const Tentandodnv({super.key});

  @override
  State<Tentandodnv> createState() => _TentandodnvState();
}

class _TentandodnvState extends State<Tentandodnv> {
  final PetController petController = PetController();

  @override
  Widget build(BuildContext context) {
    //List<Pet> pets = petController.getPets(); // Obtendo os pets do controlador

    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text('Adote seu pet'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Seja bem-vindo ao Patas Unidas! Conheça o cãozinho que vai alegrar sua vida.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: petController.InfoPet.length,
              itemBuilder: (context, index) {
                return PetCard(pet: petController.InfoPet[index]); // Exibindo o card do pet
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Doação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Adoção',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'Denúncia',

          ),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.lightBlue[200],
        // selectedFontSize: 10,
      ),
    );;
  }
}
