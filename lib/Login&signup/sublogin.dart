// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trn_project_2/Elements/mytextfield.dart';
import 'package:trn_project_2/Login&signup/facebook_image.dart';
import 'package:trn_project_2/Login&signup/github_image.dart';
import 'package:trn_project_2/Login&signup/google_image.dart';
import 'package:trn_project_2/Login&signup/mybutton.dart';

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
      await FirebaseAuth.instance.signInWithEmailAndPassword(
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
                    width: 170,
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
