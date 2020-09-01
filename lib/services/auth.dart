import 'package:flutter/material.dart';
import 'package:cursoverao/modulos/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth
      .instance; // _ means private and cannot be used in another file

  // Create user object on Firebase user

  User _userFromFirebase(FirebaseUser user) {
    return user != null ? User(userid: user.uid) : null;
  }

  // If user isn't null it's gonna return an user based on the class we created
  // and it's gonna set its id

  // All methods can be done using the FirebaseAuth class
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      // It's gonna try to sign in anonymously to our Firebase project
      /* UserCredential userCredential = await _auth.signInAnonymously();
       User user = userCredential.user; */
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  // Sign in anonymously

  // Sign in with email and password

  // Register with email and password

  // Sign out
}
