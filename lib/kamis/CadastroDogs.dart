import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projetinhooo/Dadoscachorro.dart';
import 'package:projetinhooo/DataBase_Dao.dart';
import 'package:projetinhooo/Principal.dart';




class CadastroTela extends StatefulWidget {
  const CadastroTela({super.key});
  @override
  State<CadastroTela> createState() => _CadastroTelaState();
}




class _CadastroTelaState extends State<CadastroTela> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController imagemController = TextEditingController();
  TextEditingController caracteristicaController = TextEditingController();




  final GlobalKey<FormState> formKey = GlobalKey<FormState>();




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Cadastrar Dog',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 24),
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrsmmUFPwUhhCyA15Q_FFa7jBG9bcl8FZNew&s',
                height: 180,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 32),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: nomeController,
                      decoration: buildInputDecoration('Nome do Dog'),
                      cursorColor: const Color(0xFF0E0D0D),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'O nome é obrigatório!';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: imagemController,
                      decoration: buildInputDecoration('URL da Imagem'),
                      cursorColor: const Color(0xFF050505),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'A URL da imagem é obrigatória!';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: caracteristicaController,
                      decoration: buildInputDecoration('Caracteristicas do Cachorrinho'),
                      cursorColor: const Color(0xFF070707),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'A Caracteristica é obrigatória';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {
                        // Chama a função de validação e envio do formulário
                        if (formKey.currentState!.validate()) {
                          String nome = nomeController.text;
                          String imagem = imagemController.text;
                          String caracteristica = caracteristicaController.text;




                          Dadoscachorro ca = Dadoscachorro(
                            nome: nome,
                            imagem: imagem,
                            caracteristica: caracteristica,
                          );




                          DbDao().saveCachrro(ca);




                          // Navega para a tela principal
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const Principal()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      child: Text(
                        'Cadastrar',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }




  // Função para criar o estilo do Input
  buildInputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: GoogleFonts.montserrat(
        color: const Color(0xFF0E0D0D),
        fontWeight: FontWeight.w600,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF080809), width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF050505), width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    );
  }
}
