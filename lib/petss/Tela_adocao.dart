import 'package:flutter/material.dart';
import 'pet.dart';
import 'pet_controller.dart';
import 'pet_card.dart';

class TelaAdocao extends StatefulWidget {
  @override
  _TelaAdocaoState createState() => _TelaAdocaoState();
}

class _TelaAdocaoState extends State<TelaAdocao> {
  late PetController _petController;
  late List<Pet> _pets;

  @override
  void initState() {
    super.initState();
    _petController = PetController();
    _pets = _petController.getPets(); // Inicializa a lista de pets
  }

  @override
  Widget build(BuildContext context) {
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
          // Usando GridView.builder para gerar dinamicamente os cards dos pets
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,  // Exibe 2 pets por linha
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: _pets.length, // Número de pets a ser exibido (baseado na lista)
              itemBuilder: (context, index) {
                return PetCard(pet: _pets[index]); // Criando um PetCard para cada pet da lista
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
      ),
    );
  }

  // Método que você pode usar futuramente para atualizar a lista de pets
  void atualizarListaDePets() {
    setState(() {
      _pets = _petController.getPets(); // Atualiza a lista de pets
    });
  }
}
