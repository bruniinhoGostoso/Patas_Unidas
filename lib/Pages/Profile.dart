import 'package:flutter/material.dart';

import '../NubankScreen.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);


  @override
  State<DetailPage> createState() => _DetailPageState();
}


class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff79B2E9),
        title: Center(
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
      backgroundColor: Color(0xff79B2E9),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),


                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpd4mJRIUwqgE8D_Z2znANEbtiz4GhI4M8NQ&s'),
                  radius: 80,


                ),
                //texto
                SizedBox(height: 9),
                Text(
                  'Dados pessoais',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 45),


                Container(
                  height: 43,
                  width: 300,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 6), //borda
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Row(
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


                SizedBox(
                  height: 20,
                ),


                Container(
                  height: 45,
                  width: 300,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(2, 6),
                          blurRadius: 20,
                        ),
                      ]),
                  child: Row(
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


                SizedBox(
                  height: 20,
                ),



                Container(
                  width: 300,
                  height: 45,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Row(
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


                SizedBox(height: 20),


                Text(
                  'Seu genero',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),


                SizedBox(height: 15),



                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'feminino',
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all(Size(150, 50)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),


                    SizedBox(width: 10),                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'masculino',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all(Size(150, 50)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


                SizedBox(
                  height: 30,
                ),
                Row(
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
                SizedBox(
                  height: 8,
                ),
                Row(
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


                SizedBox(
                  height: 30,
                ),


                Row(
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


                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Sim',
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
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
                        'Não',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all(Size(150, 50)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


                SizedBox(height: 20),


                Row(
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


                SizedBox(height: 20),
                botoes('Casa', 'Apartamento'),
                SizedBox(
                  height: 20,
                ),


                Row(
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


                SizedBox(
                  height: 15,
                ),
                botoes('Sim', 'Não'),


                SizedBox(
                  height: 15,
                ),
                Row(
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
                SizedBox(
                  height: 15,
                ),
                botoes('Pequeno', 'Médio'),
                SizedBox(
                  height: 15,
                ),


                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Grande',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                          fixedSize: MaterialStateProperty.all(Size(150, 50)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),


                Row(
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


                SizedBox(
                  height: 15,
                ),


                Container(
                  height: 43,
                  width: 300,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Flexible(
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


                SizedBox(
                  height: 15,
                ),
                Row(
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
                SizedBox(
                  height: 15,
                ),


                Container(
                  height: 45,
                  width: 300,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Row(
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


                SizedBox(
                  height: 15,
                ),


                Row(
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


                SizedBox(
                  height: 20,
                ),


                Container(
                  height: 150,
                  width: 300,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 6),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Column(
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


                SizedBox(
                  height: 25,
                ),


                //botoescoloridos
                botComCor(Colors.red, Colors.green, "Voltar", "Continuar"),


                SizedBox(
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
        SizedBox(
          width: 15,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            text1,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(c1),
              fixedSize: MaterialStateProperty.all(Size(150, 50)),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
        ),
        SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {


            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return  NubankScreen(); // Substitua 'ProximaTela' pela sua tela de destino
              }),
            );
          },
          child: Text(
            txt2,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(c2),
              fixedSize: MaterialStateProperty.all(Size(150, 50)),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
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


      SizedBox(width: 20), //
      ElevatedButton(
        onPressed: () {},
        child: Text(
          nome2,
          style: TextStyle(
            fontSize: 17,
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



