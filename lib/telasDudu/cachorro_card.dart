import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../domain/Pets.dart';


class CachorroCard extends StatefulWidget {
  final Pet pet;

  const CachorroCard({super.key, required this.pet,});

  @override
  State<CachorroCard> createState() => _CachorroCardState();
}

class _CachorroCardState extends State<CachorroCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Container(
            height: 215,
            width: 200,
            color: Colors.blueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Image.asset(
                  widget.pet.imagem,
                ),

                Container(
                  height: 25,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Adoção",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Icon(
                        Icons.pets,
                        color: Colors.blue,
                        size: 15,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        widget.pet.nome,
                        style: GoogleFonts.abel(fontSize: 15) ,
                      ),

                      const Icon(
                        Icons.tag_faces,
                        size: 15 ,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        widget.pet.localizacao,
                        style: GoogleFonts.abel(fontSize: 15),
                      ),

                      const Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}