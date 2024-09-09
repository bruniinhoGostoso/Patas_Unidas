import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class telaCachorro extends StatefulWidget {
  const telaCachorro({super.key});

  @override
  State<telaCachorro> createState() => _telaCachorroState();
}

class _telaCachorroState extends State<telaCachorro> {
  File? _image;
  int _selectedButtonIndex = 0;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF79B2E9),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: _image != null
                    ? DecorationImage(
                        image: FileImage(_image!),
                        fit: BoxFit.cover,
                      )
                    : null,
                color: Colors.grey[300],
              ),
              child: _image == null
                  ? IconButton(
                      icon: Icon(
                        Icons.add_a_photo,
                        color: Colors.white,
                        size: 50,
                      ),
                      onPressed: _pickImage,
                    )
                  : null,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Maicon, 3 Meses",
              style: GoogleFonts.belgrano(
                fontSize: 21,
                fontWeight: FontWeight.normal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      Text(
                        "Municipio, Cidade ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Descrição Cachorro Descrição Cachorro Descrição CachorroDescrição CachorroDescrição Cachorro Descrição Cachorro "
                    "Descrição Cachorro Descrição Cachorro Descrição Cachorro ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(height: 1, color: Colors.deepPurple),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
