import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  bool corB = true;
  File? _image;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff2C5E89),
        title: Text(
          'Denuncie',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30,
              color: Colors.white,
              fontFamily: "Roboto"),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 300,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: _image != null
                  ? DecorationImage(
                image: FileImage(_image!),
                fit: BoxFit.cover,
              )
                  : null,
              color: Colors.grey[300],
            ),

          ),

          Center(child: _image == null
              ? TextButton(
              onPressed: _pickImage,
              child: Text(
                  "Adicionar Foto"))
              : TextButton(onPressed: _pickImage, child:Text("Trocar foto " ),) ,),


          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Você encontrou um cãozinho desabrigado ou sofrendo maus-tratos? ',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "Informe os dados para cadastrá-lo em nossa ong:",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'Nome',
                    Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'Localização',
                    Icon(Icons.my_location),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'Raça',
                    Icon(Icons.pets),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'Raça',
                    Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'Idade',
                    Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Espécie',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade800,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                buildButoooooomm("Gato", "Cachorro"),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Sexo',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade800,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                buildButoooooomm("Fêmea", "Macho"),
                SizedBox(
                  height: 20,
                ),
                buildCheckb("Castrado"),
                buildCheckb("Vermifugado"),
                buildCheckb("Vacinado"),
                buildCheckb("Cuidados especiais"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Tamanho',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade800,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    cachorro(43),
                    SizedBox(
                      width: 10,
                    ),
                    cachorro(50),
                    SizedBox(
                      width: 10,
                    ),
                    cachorro(55),
                    SizedBox(
                      width: 10,
                    ),
                    cachorro(62),
                    SizedBox(
                      width: 10,
                    ),
                    cachorro(67),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Cores',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade800,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    cores(45, Colors.black),
                    SizedBox(
                      width: 6,
                    ),
                    cores(45, Colors.brown),
                    SizedBox(
                      width: 6,
                    ),
                    cores(45, Colors.white),
                    SizedBox(
                      width: 6,
                    ),
                    cores(45, Colors.grey),
                    SizedBox(
                      width: 6,
                    ),
                    cores(45, Colors.yellow.shade800),
                    cores(45, Colors.red.shade300),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cores(double tamanho, Color cor) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              corB = false;
            });
          },
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all<Color>(cor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(tamanho),
              ),
            ),
            minimumSize:
            MaterialStateProperty.all<Size>(Size(tamanho, tamanho)),
          ),
          child: Container(
            width: tamanho,
            height: tamanho,
            alignment: Alignment.center,
            decoration: BoxDecoration(),
          ),
        ),
      ],
    );
  }

  Widget cachorro(double tamanho) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
            backgroundColor:
            MaterialStateProperty.all<Color>(Colors.blue.shade100),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(tamanho),
              ),
            ),
            minimumSize:
            MaterialStateProperty.all<Size>(Size(tamanho, tamanho)),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/128/2454/2454302.png',
              fit: BoxFit.scaleDown,
              width: tamanho * 0.6,
            ),
            radius: tamanho / 2,
          ),
        ),
      ],
    );
  }

  InputDecoration buildInputDecoration(String label, Icon icon) {
    return InputDecoration(
      prefixIcon: Icon(icon.icon),
      labelText: label,
      floatingLabelStyle: const TextStyle(
        color: Color(0xFF10397B),
      ),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Color(0xFF10397B),
          width: 2,
        ),
      ),
    );
  }

  Widget buildButoooooomm(String nome, String nome2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              corB = !corB;
            });
            print(corB);
          },
          child: Text(
            nome,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              (corB) ? Colors.blueGrey.shade200 : Colors.red.shade600,
            ),
            fixedSize: MaterialStateProperty.all(Size(150, 50)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            nome2,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              (corB) ? Colors.blueGrey.shade200 : Colors.red.shade600,
            ),
            fixedSize: MaterialStateProperty.all(Size(150, 50)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCheckb(String nome) {
    return Column(
      children: [
        SizedBox(height: 18),
        Container(
          width: 315,
          height: 45,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                nome,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
