import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ADOÇÃO",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Deseja adotar o cãozinho?",
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Para realizar a adoção é necessário que você preencha o formulário a seguir e aguarde o período de análise",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 40),
                    // Espaçamento entre o texto e o container
                    Expanded(
                      child: Text(
                        "Nome:",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 30),
                    // Espaçamento entre o texto e o container
                    Expanded(
                      child: Text(
                        "CPF:",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                texto("E-mail:"),

                SizedBox(height: 20),
                texto("Endereço:"),

                SizedBox(height: 20),
                texto("CEP:"),

                SizedBox(height: 20),
                texto("Profissão:"),

                SizedBox(height: 20),
                botoes("Mora em >", "Casa Própria >"),

                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Enviar",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent),
                    fixedSize: MaterialStateProperty.all(Size(150, 50)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Espaçamento abaixo do botão
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget texto(String texto) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(width: 30), // Espaçamento entre o texto e o container
      Expanded(
        child: Text(
          texto,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
      ),
      Container(
        width: 250,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ],
  );
}

Widget botoes(String nome1, String nome2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: () {},
        child: Text(
          nome1,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          fixedSize: MaterialStateProperty.all(Size(150, 50)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      SizedBox(width: 20),
      ElevatedButton(
        onPressed: () {},
        child: Text(
          nome2,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          fixedSize: MaterialStateProperty.all(Size(150, 50)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    ],
  );
}