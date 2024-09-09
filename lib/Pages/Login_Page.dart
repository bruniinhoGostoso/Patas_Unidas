import 'package:agora/Pages/cadastro_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController _emailControler = TextEditingController();
  TextEditingController _senhalControler = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    Text(
                      "Entrar",
                      style: GoogleFonts.bungee(
                        fontSize: 50,
                      ),
                    ),
                    SizedBox(height: 50),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _emailControler,
                            decoration: getAuthenticationInputDecoration(
                              "E-mail ou N° celular",
                              icon: Icons.email,
                            ),
                            validator: (String? value) {
                              if (value == null) {
                                return 'Por favor, insira um e-mail ou número de celular';
                              } else if (value.length < 6) {
                                return 'Por favor, insira um e-mail ou número de celular válido';
                              } else if (!value.contains("@")) {
                                return "Informe um e-mail válido!";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: _senhalControler,
                            decoration: getAuthenticationInputDecoration(
                              "Senha",
                              icon: Icons.lock,
                            ),
                            validator: (String? value) {
                              if (value == null) {
                                return "A senha não pode ser vazia!";
                              } else if (value.length < 3) {
                                return "A senha precisa ser maior que 3 caracteres!";
                              }
                              return null;
                            },
                            obscureText: true,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            side: BorderSide(width: 1),
                            activeColor: Colors.blue,
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                          ),
                          Text(
                            "Manter Conectado",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Esqueci a senha",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.blue, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        // Ação do botão
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 70.0),
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28),
                      child: Text("Ou"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Ionicons.logo_facebook,
                            color: Colors.blue,
                            size: 50,
                          ),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.transparent,
                          child: IconButton(
                            icon: Image.asset('assets/logoPow.png'),
                            iconSize: 20,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    Text("Não possui conta?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const novaTelaEntrar();
                          }),
                        );
                      },
                      child: Text(
                        "CADASTRA-SE AGORA!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

InputDecoration getAuthenticationInputDecoration(String label,
    {IconData? icon}) {
  return InputDecoration(
    hintText: label,
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
    ),
    prefixIcon: icon != null ? Icon(icon, color: Colors.blue) : null,
  );
}
