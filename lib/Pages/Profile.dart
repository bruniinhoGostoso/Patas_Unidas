import 'package:flutter/material.dart';

class Profille extends StatefulWidget {
  const Profille({super.key});

  @override
  State<Profille> createState() => _ProfilleState();
}


class _ProfilleState extends State<Profille> {
  @override
TextEditingController  nomeP = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C5E89),
        title: const Center(
          child: Text(
            'Perfil',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30,
              color: Colors.white,
              fontFamily: "Roboto",
            ),
          ),
        ),//
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/736x/22/bf/db/22bfdb9c0f9b4efb772bb5d8ef16be03.jpg'),
                  radius: 80,
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Text(
                      'Dados pessoais',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'Nome',
                    const Icon(Icons.person),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'Data de nascimento',
                    const Icon(Icons.calendar_month),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'localização',
                    const Icon(Icons.my_location),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                buildButoooooomm('Feminino', 'Masculino'),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      'Você é um protetor?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                buildButoooooomm('Sim', 'Não'),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      'Informações complementares',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'As infromações abaixo não são de preenchimento obrigatório- mas são essenciais para ongs no critério de avaliação',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      'Há crianças em sua residência?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                buildButoooooomm('Sim', 'Não'),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      'Você mora em:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                buildButoooooomm('Casa', 'Apê'),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      'Você tem pets?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                buildButoooooomm('Sim', 'Não'),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      'Você passa uantas horas em casa, por dia?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                buildButoooooomm('4 ou -', '4 a 8 '),
                const SizedBox(
                  height: 8,
                ),
                buildButoooooomm('8 a 12 ', '12 ou +'),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      'E a sua ocupação?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'Ocupação',
                    const Icon(Icons.work),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    Text(
                      'Total de pessoas ue residem em sua casa?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'Número de moradores',
                    const Icon(Icons.family_restroom),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    Text(
                      'Possui facebook?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'Seu face',
                    const Icon(Icons.facebook),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    Text(
                      'Digite seu número telefônico?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'Seu número',
                    const Icon(Icons.add_call),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    Text(
                      'Conte um pouco mais sobre você',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  cursorColor: const Color(0xFF10397B),
                  decoration: buildInputDecoration(
                    'Escreva',
                    const Icon(Icons.person_2),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.white54),
                        fixedSize:
                        WidgetStateProperty.all(const Size(150, 50)),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ),
                      child: Text(
                        'Voltar',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.w300),
                      ),
                    ),

                    const SizedBox(width: 10), // Espaçamento entre os botões
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.blueGrey),
                        fixedSize:
                        WidgetStateProperty.all(const Size(150, 50)),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Enviar",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
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
          WidgetStateProperty.all<Color>(Colors.blueGrey.shade200),
          fixedSize: WidgetStateProperty.all(const Size(150, 50)),
          shape: WidgetStateProperty.all(
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

      const SizedBox(width: 10), // Espaçamento entre os botões
      ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor:
          WidgetStateProperty.all<Color>(Colors.blueGrey.shade200),
          fixedSize: WidgetStateProperty.all(const Size(150, 50)),
          shape: WidgetStateProperty.all(
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