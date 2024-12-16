import 'Deatalhedog.dart';
import 'Dadoscachorro.dart';
import 'package:flutter/material.dart';


class Carddoguinho extends StatefulWidget {
  final Dadoscachorro dadoscachorro;
  const Carddoguinho( {required this.dadoscachorro, super.key});
  @override
  State<Carddoguinho> createState() => _CarddoguinhoState();
}
class _CarddoguinhoState extends State<Carddoguinho> {
  Dadoscachorro get dadoscachorro => widget.dadoscachorro;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Deatalhedog(dadoscachorro: dadoscachorro);
              },
            ),
          );
        },
        child: Container(
          width: 350,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [


              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                child: Image.network(
                  dadoscachorro.imagem,
                  width: 120,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),


              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
// Nome do meu cachorrinho
                      Text(
                        dadoscachorro.nome,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),


                      Text(
                        "Personalidade:${dadoscachorro.caracteristica}",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 18,
                        ),
                      ),


                      Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const
                            Color(0xff2C5E70),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 8),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Deatalhedog(dadoscachorro:
                                    dadoscachorro),
                              ),
                            );
                          },
                          child: const Text(
                            "Ver informações",
                            style: TextStyle(fontSize: 16, color:
                            Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
