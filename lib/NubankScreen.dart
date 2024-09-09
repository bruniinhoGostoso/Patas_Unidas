import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: NubankScreen(),
  ));
}

class NubankScreen extends StatefulWidget {
  @override
  _NubankScreenState createState() => _NubankScreenState();
}

class _NubankScreenState extends State<NubankScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF06143B),
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white.withOpacity(0.1),
            child: Icon(Icons.add_a_photo, color: Colors.white),
          ),
        ),
        actions: [
          Icon(Icons.help_outline, color: Colors.white),
          SizedBox(width: 20),
          Icon(Icons.person_outline, color: Colors.white),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xFF06143B),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Olá, Katia',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Cartão de crédito',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios, size: 16))
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildIconButton(
                            'Quero Adotar', Icons.favorite, Colors.white),
                        buildIconButton('Cadastrar Pet', FontAwesomeIcons.dog,
                            Colors.white),
                        buildIconButton(
                            'Pets Cadastrados', Icons.pets, Colors.white),
                        buildIconButton('Ajude-nos', Icons.volunteer_activism,
                            Colors.white),
                        buildIconButton('Denuncie',
                            Icons.phone_android_outlined, Colors.white),
                        buildIconButton(
                            'Se divirta', Icons.gamepad, Colors.white),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  buildCardButton(
                      FontAwesomeIcons.dog, 'Meus Pets cadastrados'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Pix no Crédito: faça pagamentos sem usar o saldo da conta.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.purple),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cartão de crédito',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
            child: Text(
              'Fatura atual',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'R\$ 869,37',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Limite disponível de R\$ 0,30',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildBottomActionButton(Icons.arrow_upward, 'Aliviar fatura'),
                buildBottomActionButton(Icons.attach_money, 'Fazer pagamento'),
                buildBottomActionButton(Icons.shopping_cart, 'Parcelar compra'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIconButton(String text, IconData icon, Color cor,
      {String badge = ''}) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 30,
                child: Icon(icon, color: Colors.pinkAccent, size: 30),
              ),
              if (badge.isNotEmpty)
                Positioned(
                  bottom: -5,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      badge,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(fontSize: 13, color: cor),
          ),
        ],
      ),
    );
  }

  Widget buildCardButton(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }

  Widget buildBottomActionButton(IconData icon, String text) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.purple[50],
          child: Icon(icon, color: Colors.purple),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
