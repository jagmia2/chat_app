import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart';

class AuthService extends ChangeNotifier {
  //instance of auth

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //sign in
  Future<UserCredential> signInWithEmailandPassword(
      String email, String password) async {
    try {
      //sign in
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential;
      //catch any errors
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //sign out
}
