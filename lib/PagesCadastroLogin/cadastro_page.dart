import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:patas/Pages/Profile.dart';
import 'package:patas/PagesCadastroLogin/Login_Page.dart';
import 'package:patas/servico/autenticacao.dart';



class novaTelaEntrar extends StatefulWidget {
  const novaTelaEntrar({super.key});

  @override
  State<novaTelaEntrar> createState() => _novaTelaEntrarState();
}

class _novaTelaEntrarState extends State<novaTelaEntrar> {
  bool queroEntrar = true;
  bool status = false;

  final _formkey = GlobalKey<FormState>();

  final TextEditingController _emailControler = TextEditingController();
  final TextEditingController _senhalControler = TextEditingController();
  final TextEditingController _nomeControler = TextEditingController();
//
  final autenticacaoservico _servico = autenticacaoservico();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 500,
              height: 170,
              decoration: const BoxDecoration(
                color: Color(0XFF0583F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 12),
                  Text(
                    "  FAZER CADASTRO",
                    style: TextStyle(
                      fontSize: 27,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 32.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    const SizedBox(height: 12),
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
                        } else if (!value.contains("@gmail.com")) {
                          return "Informe um e-mail válido!";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),

                    TextFormField(
                      controller: _senhalControler,
                      decoration: getAuthenticationInputDecoration(
                          "Criar Senha",
                          icon: Icons.lock),
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
                    const SizedBox(height: 12),
                    TextFormField(
                      decoration: getAuthenticationInputDecoration(
                          "Confirme sua senha",
                          icon: Icons.lock_reset_sharp),
                      obscureText: true,
                    ),
                    const SizedBox(height: 25),
                    const Center(
                      child: Text(
                        "Ao clicar 'Cadastrar', você com com os \n Termos e Condições.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          botaoClicado();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFF0583F2),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Cadastrar",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(child: Text("Ou")),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Já possui conta?",
                          style: TextStyle(color: Colors.grey.shade900),
                        ),
                        TextButton(
                            onPressed: navegarTelaMenu,
                            child: Text(
                              "Entre aqui",
                              style: TextStyle(color: Colors.blue.shade700),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navegarTelaMenu() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return  const TelaLogin();
      }),
    );
  }

  void botaoClicado() async {
    if (_formkey.currentState!.validate()) {
      try {
        await _servico.cadastrarUsuario(
          nome: _nomeControler.text,
          email: _emailControler.text,
          senha: _senhalControler.text,
        );

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Cadastro realizado com sucesso!")),
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) {
            return const Profille() ;
          }),
        );

      } catch (e) {
        // Mostrar mensagem de erro
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Erro ao cadastrar: $e")),
        );
      }

    } else {
      print("Formulário inválido");
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
      borderRadius: BorderRadius.circular(10),
    ),
    prefixIcon: icon != null ? Icon(icon, color: Colors.blue) : null,
  );
}