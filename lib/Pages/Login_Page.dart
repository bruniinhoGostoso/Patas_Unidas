import 'package:agora/NubankScreen.dart';
import 'package:agora/Pages/cadastro_page.dart';
import 'package:agora/servico/autenticacaoLogin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

import '../servico/autenticacao.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _emailControler = TextEditingController();
  final TextEditingController _senhalControler = TextEditingController();
  bool _isChecked = false;
  final bool _senhaEmailOk = false;
  final autenticacaoLogin _servico = autenticacaoLogin();

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
                    const SizedBox(height: 100),
                    Text(
                      "Entrar",
                      style: GoogleFonts.bungee(
                        fontSize: 50,
                      ),
                    ),
                    const SizedBox(height: 50),
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
                          const SizedBox(height: 10),
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
                            side: const BorderSide(width: 1),
                            activeColor: Colors.blue,
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                          ),
                          const Text(
                            "Manter Conectado",
                            style: TextStyle(fontSize: 12),
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            "Esqueci a senha",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Colors.blue, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () => novaVerifc(),
                      child: const Padding(
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
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 28),
                      child: Text("Ou"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Ionicons.logo_facebook,
                            color: Colors.blue,
                            size: 50,
                          ),
                        ),
                        const SizedBox(width: 10),
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
                    const SizedBox(height: 32),
                    const Text("Não possui conta?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const novaTelaEntrar();
                          }),
                        );
                      },
                      child: const Text(
                        "CADASTRA-SE AGORA!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



  void novaVerifc() async{
    if (_formkey.currentState!.validate()) {
      print(_emailControler);
      print(_senhalControler);

      _servico
          .logarUsuarios(
              email: _emailControler.text, senha: _senhalControler.text)
          .then((String? erro) {
        if (erro != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(erro)),
          );
        }else{

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) {
              return NubankScreen(); // Substitua 'ProximaTela' pela sua tela de destino
            }),
          );
        }
      },);
    }else{

      print("ERRO");

    }
  }


  void tentando() async{

    try {
      await _servico.logarUsuarios(email: _emailControler.text, senha: _senhalControler.text);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NubankScreen()),
      
      );
      print("Usuario verificado!");
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Erro: $e")));
    }
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
