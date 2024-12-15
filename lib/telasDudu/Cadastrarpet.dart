import 'package:flutter/material.dart';
import 'package:patas/domain/Pets.dart';


import '../db/addPet_DAO.dart';
import 'PrincipalCard.dart';

class Cadastrarpet extends StatefulWidget {
  const Cadastrarpet({super.key});

  @override
  State<Cadastrarpet> createState() => _CadastrarpetState();
}

class _CadastrarpetState extends State<Cadastrarpet> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController idadeController = TextEditingController();
  final TextEditingController sexoController = TextEditingController();
  final TextEditingController localizacaoController = TextEditingController();
  final TextEditingController imagemController =
      TextEditingController(text: 'assets/petbranco.jpg');


  final _formKey = GlobalKey<FormState>();

  void initState() {
    super.initState();
    fetchAndPrintUsers();
  }

  void fetchAndPrintUsers() async {
    var users = await addPetDAO().getAllUsers();
    for (var user in users) {
      print(
          user);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2C5E89),
        title: const Center(
          child: Text(
            'Cadastrar Pet',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 30,
              color: Colors.white,
              fontFamily: "Roboto",
            ),
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Column(
              children: [
                const SizedBox(height: 20),
                CircleAvatar(
                  backgroundImage: AssetImage(imagemController.text),
                  radius: 80,
                ),
                const SizedBox(height: 30),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Dados do cachorro',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                buildTextField(
                  label: 'Nome',
                  controller: nomeController,
                  icon: Icons.pets,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o nome do pet';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                buildTextField(
                  label: 'Idade',
                  controller: idadeController,
                  icon: Icons.calendar_today,
                  isNumeric: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira a idade';
                    }
                    if (int.tryParse(value) == null) {
                      return 'A idade deve ser um número';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                buildTextField(
                  label: 'Sexo',
                  controller: sexoController,
                  icon: Icons.accessibility,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o sexo do pet';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                buildTextField(
                  label: 'Localização',
                  controller: localizacaoController,
                  icon: Icons.location_on,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira a localização';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                buildTextField(
                  label: 'Imagem',
                  controller: imagemController,
                  icon: Icons.image,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o caminho da imagem';
                    }
                    return null;
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final pet = Pet(
                        nome: nomeController.text,
                        idade: int.tryParse(idadeController.text) ?? 0,
                        sexo: sexoController.text,
                        localizacao: localizacaoController.text,
                        imagem: imagemController.text,
                      );
                      addPetDAO dao = addPetDAO();
                      dao.addPet(pet);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Pet cadastrado: ${pet.nome}'),
                        ),
                      );

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Principalcard();
                      }));

                      print(
                          'Pet cadastrado: ${pet.nome}, ${pet.idade}, ${pet.sexo}, ${pet.localizacao}, ${pet.imagem}');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE81F7C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 40,
                    ),
                  ),
                  child: const Text(
                    '   Cadastrar Pet   ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField({
    required String label,
    required TextEditingController controller,
    required IconData icon,
    bool isNumeric = false,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
      cursorColor: const Color(0xFF10397B),
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
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
      ),
      validator: validator,
    );
  }
}
