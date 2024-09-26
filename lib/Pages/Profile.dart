import 'package:flutter/material.dart';

import '../NubankScreen.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({super.key});


  @override
  State<DetailPage> createState() => _DetailPageState();
}


class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff79B2E9),
        title: const Center(
          child: Text(
            'Perfil',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xff79B2E9),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),


                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpd4mJRIUwqgE8D_Z2znANEbtiz4GhI4M8NQ&s'),
                  radius: 80,


                ),
                //texto
                const SizedBox(height: 9),
                const Text(
                  'Dados pessoais',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 45),


                Container(
                  height: 43,
                  width: 300,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 6), //borda
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Flexible(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontFamily: "Arial",
                            //fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Nome',
                            border:
                            InputBorder.none,                          ),
                        ),
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),


                const SizedBox(
                  height: 20,
                ),


                Container(
                  height: 45,
                  width: 300,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(2, 6),
                          blurRadius: 20,
                        ),
                      ]),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontFamily: "Bellefair",
                          ),
                          decoration: InputDecoration(
                            hintText: 'Data de nascimento',
                            border: InputBorder.none,                          ),
                        ),
                      ),
                      Icon(Icons.calendar_month, color: Colors.blue)
                    ],
                  ),
                ),


                const SizedBox(
                  height: 20,
                ),



                Container(
                  width: 300,
                  height: 45,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontFamily: "Arial",
                          ),
                          decoration: InputDecoration(
                            hintText: 'Localização',
                            border:
                            InputBorder.none,                          ),
                        ),
                      ),
                      Icon(
                        Icons.my_location,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),


                const SizedBox(height: 20),


                const Text(
                  'Seu genero',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),


                const SizedBox(height: 15),



                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                        fixedSize: WidgetStateProperty.all(const Size(150, 50)),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: Text(
                        'feminino',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),


                    const SizedBox(width: 10),                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                        fixedSize: WidgetStateProperty.all(const Size(150, 50)),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: Text(
                        'masculino',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),


                const SizedBox(
                  height: 30,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Informaçoes coplementares',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'As informações a seguir devem ser\n'
                          ' preenchidas corretamente',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0XFF272F7B),
                      ),
                    ),
                  ],
                ),


                const SizedBox(
                  height: 30,
                ),


                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Há crianças em sua residencia?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),


                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                        fixedSize: WidgetStateProperty.all(const Size(150, 50)),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: Text(
                        'Sim',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),


                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                        fixedSize: WidgetStateProperty.all(const Size(150, 50)),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: Text(
                        'Não',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),


                const SizedBox(height: 20),


                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Onde você mora?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),


                const SizedBox(height: 20),
                botoes('Casa', 'Apartamento'),
                const SizedBox(
                  height: 20,
                ),


                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Você tem outros pets? ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Roboto"),
                    )
                  ],
                ),


                const SizedBox(
                  height: 15,
                ),
                botoes('Sim', 'Não'),


                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Espaço díponivel na residencia',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                botoes('Pequeno', 'Médio'),
                const SizedBox(
                  height: 15,
                ),


                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.white),
                          fixedSize: WidgetStateProperty.all(const Size(150, 50)),
                          shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                      child: Text(
                        'Grande',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),


                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Qual a sua ocupação?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    )
                  ],
                ),


                const SizedBox(
                  height: 15,
                ),


                Container(
                  height: 43,
                  width: 300,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: const Flexible(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontFamily: "Arial",
                        //fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Escreva',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),


                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Numero de pessoas '
                          'morando \ncom você:',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),


                Container(
                  height: 45,
                  width: 300,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.top,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontFamily: "Arial",
                            //fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Digite',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                const SizedBox(
                  height: 15,
                ),


                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Fale mais sobre você',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    )
                  ],
                ),


                const SizedBox(
                  height: 20,
                ),


                Container(
                  height: 150,
                  width: 300,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontFamily: "Arial",
                            //fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Escreva sobre você',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                const SizedBox(
                  height: 25,
                ),


                //botoescoloridos
                botComCor(Colors.red, Colors.green, "Voltar", "Continuar"),


                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget botComCor(Color c1, Color c2, String text1, String txt2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 15,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(c1),
              fixedSize: WidgetStateProperty.all(const Size(150, 50)),
              shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
          child: Text(
            text1,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {


            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return  NubankScreen(); // Substitua 'ProximaTela' pela sua tela de destino
              }),
            );
          },
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(c2),
              fixedSize: WidgetStateProperty.all(const Size(150, 50)),
              shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
          child: Text(
            txt2,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ],
    );
  }

}


Widget botoes(String nome1, String nome2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
          fixedSize: WidgetStateProperty.all(const Size(150, 50)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        child: Text(
          nome1,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),


      const SizedBox(width: 20), //
      ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
          fixedSize: WidgetStateProperty.all(const Size(150, 50)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        child: Text(
          nome2,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}



