

import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:novo/pasta/Box.dart';

import 'Profille.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
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
  _CheckboxListState createState() => _CheckboxListState();

  List box = [
    Marcador(
      check: true,
    ),
    Marcador(
      check: true,
    ),
    Marcador(
      check: true,
    ),
    Marcador(
      check: true,
    ),
  ];

  buildCardPacotecheck({
    required Marcador bb,
    required String nome,
  }) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          width: 315,
          height: 45,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                nome,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
              ),
              Checkbox(
                side: BorderSide(width: 1),
                activeColor: Colors.blue,
                value: bb.check,
                onChanged: (value) {
                  setState(() {
                    bb.check = value!;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  TextEditingController locacontroller = TextEditingController();
  TextEditingController Racacontroller = TextEditingController();
  TextEditingController Nomecontroller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int _selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C5E89),
        title: const Center(
          child: Text(
            'Denuncie',
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 30,
                color: Colors.white,
                fontFamily: "Roboto"),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: _image == null
                        ? TextButton(
                            onPressed: _pickImage,
                            child: Text((_image != null)
                                ? "Trocar foto "
                                : "Adicionar Foto"))
                        : null,
                  ),
                  if (_image != null)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.file(
                        _image!,
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  Text(
                    'Você encontrou um cãozinho desabrigado ou sofrendo maus -tratos? ',
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
                  TextFormField(
                    controller: Nomecontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo e-mail obrigatório.';
                      }
                      return null;
                    },
                    cursorColor: const Color(0xFF10397B),
                    decoration: buildInputDecoration(
                      'Nome',
                      Icon(Icons.person),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: locacontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo e-mail obrigatório.';
                      }
                      return null;
                    },
                    cursorColor: Color(0xFF10397B),
                    decoration: buildInputDecoration(
                      'localização',
                      const Icon(Icons.my_location),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    cursorColor: Color(0xFF10397B),
                    decoration: buildInputDecoration(
                      'Idade',
                      Icon(Icons.pets),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: Racacontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Campo e-mail obrigatório.';
                      }
                      return null;
                    },
                    cursorColor: const Color(0xFF10397B),
                    decoration: buildInputDecoration(
                      'Raça',
                      Icon(Icons.person),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                        'O cachorro é:',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  buildCardPacotecheck(bb: box[0], nome: "Castrado"),
                  buildCardPacotecheck(bb: box[1], nome: "Vermifugado"),
                  buildCardPacotecheck(bb: box[2], nome: "Vacinado"),
                  buildCardPacotecheck(bb: box[3], nome: "Especial"),
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
                        width: 6,
                      ),
                      cachorro(43),
                      SizedBox(
                        width: 6,
                      ),
                      cachorro(50),
                      SizedBox(
                        width: 6,
                      ),
                      cachorro(55),
                      SizedBox(
                        width: 10,
                      ),
                      cachorro(60),
                      SizedBox(
                        width: 10,
                      ),
                      cachorro(65),
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
                        width: 6,
                      ),
                      cores(40, Colors.black),
                      SizedBox(
                        width: 6,
                      ),
                      cores(40, Colors.brown),
                      SizedBox(
                        width: 6,
                      ),
                      cores(40, Colors.white),
                      SizedBox(
                        width: 6,
                      ),
                      cores(40, Colors.grey),
                      SizedBox(
                        width: 6,
                      ),
                      cores(40, Colors.yellow.shade800),
                      cores(40, Colors.red.shade300),
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
                        'Características',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Carater(
                          45,
                          'https://cdn-icons-png.flaticon.com/256/14969/14969875.png',
                          "Amigo"),
                      SizedBox(
                        width: 10,
                      ),
                      Carater(
                          45,
                          'https://cdn-icons-png.flaticon.com/256/683/683529.png',
                          "Inteligente"),
                      SizedBox(
                        width: 10,
                      ),
                      Carater(
                          45,
                          'https://cdn-icons-png.flaticon.com/256/889/889727.png',
                          "Ativo"),
                      SizedBox(
                        width: 10,
                      ),
                      Carater(
                          45,
                          'https://cdn-icons-png.flaticon.com/256/3973/3973284.png',
                          "Ágil"),
                      SizedBox(
                        width: 10,
                      ),
                      Carater(
                          45,
                          'https://cdn-icons-png.flaticon.com/256/4957/4957053.png',
                          "Paceiro"),
                    ],
                  ),
                  Carater(
                      45,
                      'https://cdn-icons-png.flaticon.com/256/4957/4957053.png',
                      "Paceiro"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white54),
                          fixedSize:
                              MaterialStateProperty.all(const Size(150, 50)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Voltar",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            String local = locacontroller.text;

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const Profille();
                                },
                              ),
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.lightBlueAccent),
                          fixedSize:
                              MaterialStateProperty.all(const Size(150, 50)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Avançar",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CheckboxListState {}

Widget cores(double tamanho, Color cor) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
          backgroundColor: MaterialStateProperty.all<Color>(cor),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
            (Set<MaterialState> states) {
              BorderRadius borderRadius = BorderRadius.circular(tamanho);

              BorderSide borderSide = BorderSide.none;
              if (states.contains(MaterialState.pressed)) {
                borderSide = BorderSide(color: Colors.black, width: 2.0);
              }

              return RoundedRectangleBorder(
                borderRadius: borderRadius,
                side: borderSide,
              );
            },
          ),
          minimumSize: MaterialStateProperty.all<Size>(Size(tamanho, tamanho)),
        ),
        child: Container(
          width: tamanho,
          height: tamanho,
          alignment: Alignment.center,
          decoration: const BoxDecoration(),
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
          minimumSize: MaterialStateProperty.all<Size>(Size(tamanho,
              tamanho)), // Define o tamanho do botão com base no parâmetro
        ),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: tamanho / 2,
          child: Image.network(
            'https://cdn-icons-png.flaticon.com/128/2454/2454302.png',
            fit: BoxFit.scaleDown,
            width: tamanho * 0.6,
          ),
        ),
      ),
    ],
  );
}

buildInputDecoration(String label, Icon icon) {
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

buildButoooooomm(String nome, String nome2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.blueGrey.shade200),
          fixedSize: MaterialStateProperty.all(const Size(150, 50)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
        child: Text(
          nome,
          style: const TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
      const SizedBox(width: 10),
      ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.blueGrey.shade200),
          fixedSize: MaterialStateProperty.all(const Size(150, 50)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
        child: Text(
          nome2,
          style: const TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
    ],
  );
}

Widget Carater(double tamanho, String url, String Nome) {
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
          minimumSize: MaterialStateProperty.all<Size>(Size(tamanho, tamanho)),
        ),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: tamanho / 2,
          child: Image.network(
            url,
            fit: BoxFit.scaleDown,
            width: tamanho * 0.6,
          ),
        ),
      ),
      Text(Nome),
    ],
  );
}
