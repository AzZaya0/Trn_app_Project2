// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthX {
  void googleSignin1() async {
    GoogleSignIn _googleSignIn = GoogleSignIn();

    try {
      var result1 = await _googleSignIn.signIn();

      if (result1 == null) {
        return;
      }

      final userdata = await result1!.authentication;
      final Credential = GoogleAuthProvider.credential(
          accessToken: userdata.accessToken, idToken: userdata.idToken);
      var finalresult = FirebaseAuth.instance.signInWithCredential(Credential);
    } catch (e) {
      // Close the progress dialog
      print("error");
      // Show a generic error message dialog
    }
  }
}
