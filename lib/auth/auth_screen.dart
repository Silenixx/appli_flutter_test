import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthScreen extends StatelessWidget {
  // Fonction pour la connexion anonyme
  void signInAnonymously() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
      print("User ID: ${userCredential.user?.uid}");
    } catch (e) {
      print("Erreur de connexion anonyme: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Authentification')),
      body: Center(
        child: ElevatedButton(
          onPressed: signInAnonymously,
          child: Text("Connexion Anonyme"),
        ),
      ),
    );
  }
}
