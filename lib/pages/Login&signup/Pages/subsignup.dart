// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_cast, use_build_context_synchronously, non_constant_identifier_names, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trn_project_2/pages/Login&signup/elements/mytextfieldL.dart';
import 'package:trn_project_2/pages/Login&signup/elements/facebook_image.dart';
import 'package:trn_project_2/pages/Login&signup/elements/phone_image.dart';
import 'package:trn_project_2/pages/Login&signup/elements/google_image.dart';
import 'package:trn_project_2/pages/Login&signup/elements/mybuttonL.dart';

class Subsignup extends StatefulWidget {
  Subsignup({super.key});

  @override
  State<Subsignup> createState() => _SubsignupState();
}

class _SubsignupState extends State<Subsignup> {
  final emailcontroller = TextEditingController();

  final passcontroller = TextEditingController();

  final Confirmpasscontroller = TextEditingController();

  void userRegister() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(child: CircularProgressIndicator());
        });

    if (passcontroller.text == Confirmpasscontroller.text) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailcontroller.text,
                password: Confirmpasscontroller.text);
        Navigator.pop(context);
        FirebaseFirestore.instance
            .collection('user')
            .doc(userCredential.user!.uid)
            .set({
          'uid': userCredential.user!.uid,
          'email': emailcontroller.text
        }, SetOptions(merge: true));
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context as BuildContext);
        showerrorMessage(e.code);
      }
    } else {
      Navigator.pop(context as BuildContext);
      showerrorMessage('password doesnt match');
    }
  }

  void showerrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.deepPurple,
            title: Center(
              child: Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyTextField(
              hintText: 'Email',
              obscureText: false,
              usercontroller: emailcontroller),
          SizedBox(height: 10),
          MyTextField(
            usercontroller: passcontroller,
            hintText: 'Password',
            obscureText: true,
          ),
          SizedBox(height: 10),
          MyTextField(
            usercontroller: Confirmpasscontroller,
            hintText: 'Confirm Password',
            obscureText: true,
          ),
          SizedBox(
            height: 20,
          ),
          MyButton(ontapfunction: userRegister, mytext: 'Sign In'),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Google_imageLog(),
                Phone_imageLog(),
                //         Facebook_imageLog(),
                //        Github_imageLog()
              ],
            ),
          )
        ],
      ),
    );
  }
}
