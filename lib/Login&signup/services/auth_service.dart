// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, avoid_print, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthX {
  void googleSignin1() async {
    GoogleSignIn _googleSignIn = GoogleSignIn();

    try {
      GoogleSignInAccount? result1 = await _googleSignIn.signIn();

      if (result1 == null) {
        return;
      }

      final userdata = await result1!.authentication;
      final _Credential = GoogleAuthProvider.credential(
          accessToken: userdata.accessToken, idToken: userdata.idToken);
      var finalresult = FirebaseAuth.instance.signInWithCredential(_Credential);
      FirebaseFirestore.instance.collection('user').doc(result1.id).set({
        'uid': result1.id,
        'email': result1.email,
        'photoUrl': result1.photoUrl
      }, SetOptions(merge: true));
    } catch (e) {
      // Close the progress dialog
      print("error");
      // Show a generic error message dialog
    }
  }
}
