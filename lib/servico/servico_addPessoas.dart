import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class addPessoas {
  String userId = "";

  addPessoas() : userId = FirebaseAuth.instance.currentUser!.uid;
   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

   Future<void> adicionarPessoa (dadosPessoa )async{
//await _firestore.collection(userId).doc()

   }
}
