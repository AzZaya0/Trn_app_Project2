// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_build_context_synchronously, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trn_project_2/pages/Login&signup/elements/mytextfieldL.dart';
import 'package:trn_project_2/pages/Login&signup/elements/facebook_image.dart';
import 'package:trn_project_2/pages/Login&signup/elements/phone_image.dart';
import 'package:trn_project_2/pages/Login&signup/elements/google_image.dart';
import 'package:trn_project_2/pages/Login&signup/elements/mybuttonL.dart';

class Sublogin extends StatefulWidget {
  Sublogin({Key? key}) : super(key: key);

  @override
  State<Sublogin> createState() => _SubloginState();
}

class _SubloginState extends State<Sublogin> {
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();

  void signuserin() async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(child: CircularProgressIndicator());
      },
    );
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailcontroller.text, password: passcontroller.text);

      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showerrorMessage(e.code);
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
            hintText: 'Email or Username',
            obscureText: false,
            usercontroller: emailcontroller,
          ),
          SizedBox(height: 10),
          MyTextField(
            hintText: 'Password',
            obscureText: true,
            usercontroller: passcontroller,
          ),
          SizedBox(height: 10),
          Container(
              height: 25,
              width: 293,
              child: Row(
                children: [
                  SizedBox(
                    height: 0,
                    width: 150,
                  ),
                  Text('Forgot Password ?')
                ],
              )),
          SizedBox(
            height: 10,
          ),
          MyButton(ontapfunction: signuserin, mytext: 'Login'),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Google_imageLog(),
                Phone_imageLog(),
                //      Facebook_imageLog(),
                //      Github_imageLog()
              ],
            ),
          )
        ],
      ),
    );
  }
}
