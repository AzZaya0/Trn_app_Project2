// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_cast, use_build_context_synchronously, non_constant_identifier_names, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trn_project_2/Elements/mytextfield.dart';
import 'package:trn_project_2/Login&signup/facebook_image.dart';
import 'package:trn_project_2/Login&signup/github_image.dart';
import 'package:trn_project_2/Login&signup/google_image.dart';
import 'package:trn_project_2/Login&signup/mybutton.dart';

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
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailcontroller.text, password: Confirmpasscontroller.text);
        Navigator.pop(context);
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
                Facebook_imageLog(),
                Github_imageLog()
              ],
            ),
          )
        ],
      ),
    );
  }
}
