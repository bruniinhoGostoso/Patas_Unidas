import 'dart:async';
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
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  final List<String> images = [
    'https://via.placeholder.com/400x200.png?text=Imagem+1',
    'https://via.placeholder.com/400x200.png?text=Imagem+2',
    'https://via.placeholder.com/400x200.png?text=Imagem+3',
  ];

  @override
  void initState() {
    super.initState();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

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


        body: ListView(
          children: [
            Container(
              color: Color(0xFF06143B),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
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
                    InkWell(
                      onTap: () {
                        print("Row clicado");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Conta',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildIconButton('Quero Adotar', Icons.favorite, Colors.white),
                          buildIconButton('Cadastrar Pet', FontAwesomeIcons.dog, Colors.white),
                          buildIconButton('Pets Cadastrados', Icons.pets, Colors.white),
                          buildIconButton('Ajude-nos', Icons.volunteer_activism, Colors.white),
                          buildIconButton('Denuncie', Icons.phone_android_outlined, Colors.white),
                          buildIconButton('Se divirta', Icons.gamepad, Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    buildCardButton(FontAwesomeIcons.dog, 'Meus Pets cadastrados'),
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
                    'Veja alguns cães que estão em busca de uma lar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_ios, size: 16),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 25),
                  child: Container(
                    width: 320,
                    height: 220,
                    color: Colors.pink,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Image.network(
                          images[index],
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 16),

              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildBottomActionButton(FontAwesomeIcons.bone, 'Doe Ração'),
                  buildBottomActionButton(Icons.report, 'Denunciar Abandono'),
                  buildBottomActionButton(Icons.list, 'Minhas '),
                ],
              ),
            ),
          ],
        )



    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(images.length, (index) {
        return AnimatedContainer(
          duration: Duration(milliseconds: 500),
          margin: EdgeInsets.symmetric(horizontal: 4),
          width: _currentPage == index ? 12 : 8,
          height: _currentPage == index ? 12 : 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? Colors.blue : Colors.grey,
          ),
        );
      }),
    );
  }

  Widget buildIconButton(String text, IconData icon, Color cor, {String badge = ''}) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(

              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 30,
                  child: Icon(icon, color: Colors.pinkAccent, size: 30),
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
