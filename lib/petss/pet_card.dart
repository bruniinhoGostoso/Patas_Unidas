import 'package:flutter/material.dart';

import '../domain/Pets.dart';

class PetCard extends StatelessWidget {
  final Pet pet;

  const PetCard({required this.pet});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            pet.nome,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      pet.imagem,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                )),
          ),
          /*Padding(
            padding: const EdgeInsets.all(8.0),
            child:
          ),*/
          Text('${pet.idade} - ${pet.sexo}'),
        ],
      ),
    );
  }
}
