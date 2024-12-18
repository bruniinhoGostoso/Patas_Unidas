import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:patas/Menu.dart';
import 'package:patas/PagesCadastroLogin/cadastro_page.dart';
import 'package:patas/db/sharedPrefs.dart';

import '../servico/autenticacaoLogin.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailControler = TextEditingController();
  final TextEditingController _senhalControler = TextEditingController();

  bool _senhaVisivel = false;
  bool _manterConectado = false;
  final autenticacaoLogin _servico = autenticacaoLogin();

  @override
  void initState() {
    super.initState();
    _carregarPreferenciaManterConectado();
  }

  Future<void> _carregarPreferenciaManterConectado() async {
    SharedPrefs prefs = SharedPrefs();
    final bool ConectadoOuNao =
        await prefs.carregarPreferenciaManterConectado();

    setState(() {
      _manterConectado = ConectadoOuNao;
    });
  }
//
  Future<void> _salvarPreferenciaManterConectado(bool valor) async {
    //final prefs = await SharedPreferences.getInstance();
    SharedPrefs prefs = SharedPrefs();
    await prefs.setUser(valor);
    //await prefs.setBool('manterConectado', valor);

//Persistence.SESSION: Apenas mantém a sessão ativa enquanto o aplicativo estiver aberto.
// Persistence.NONE: Não mantém nenhuma sessão ativa.
// mantem o usuario logado mesmo depois do app ser fechado: await FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
   /* if (valor) {
      await FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
    } else {
      await FirebaseAuth.instance.setPersistence(Persistence.SESSION);
    }*/
  }

  void _fazerLogin() async {
    if (_formkey.currentState!.validate()) {
      try {
        /*await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailControler.text,
          password: _senhalControler.text,
        );*/
        await _servico.logarUsuarios(
            email: _emailControler.text, senha: _senhalControler.text);
        // salva a preferencia do usuário
        await _salvarPreferenciaManterConectado(_manterConectado);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const NubankScreen()),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro ao fazer login: ${e.toString()}')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Erro ao fazer login: Referente ao validador')),
      );
    }
  }

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
                              if (value == null || value.isEmpty) {
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
                            ).copyWith(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _senhaVisivel
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _senhaVisivel = !_senhaVisivel;
                                  });
                                },
                              ),
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return "A senha não pode ser vazia!";
                              } else if (value.length < 5) {
                                return "A senha precisa ser maior que 3 caracteres!";
                              }
                              return null;
                            },
                            obscureText: !_senhaVisivel,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: _manterConectado,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _manterConectado = value!;
                                  });
                                },
                              ),
                              const Text("Manter conectado"),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: _fazerLogin,
                            child: const Text("Entrar"),
                          ),
                        ],
                      ),
                    ),
                    /*Padding(
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
                                _isChecked = value ?? false;
                              });
                              _saveCheckboxValue(_isChecked);
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
                    ),*/
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
}
