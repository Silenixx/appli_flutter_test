import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUserScreen extends StatelessWidget {
  // Fonction pour ajouter un utilisateur
  void addUser() {
    FirebaseFirestore.instance.collection('users').add({
      'nom': 'Alice',
      'age': 25,
      'ville': 'Paris'
    }).then((value) {
      print("Utilisateur ajouté");
    }).catchError((error) {
      print("Erreur d'ajout de l'utilisateur: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ajouter un Utilisateur')),
      body: Center(
        child: ElevatedButton(
          onPressed: addUser,
          child: Text("Ajouter Utilisateur"),
        ),
      ),
    );
  }
}
