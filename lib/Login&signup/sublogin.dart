// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trn_project_2/Elements/mytextfield.dart';

class Sublogin extends StatefulWidget {
  Sublogin({Key? key}) : super(key: key);

  @override
  State<Sublogin> createState() => _SubloginState();
}

class _SubloginState extends State<Sublogin> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyTextField(hintText: 'Email'),
          SizedBox(height: 10),
          MyTextField(hintText: 'Password'),
          SizedBox(height: 30),
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
          Container(
              height: 54,
              width: 293,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.00),
                color: Colors.blue,
              ),
              child: Center(
                child: Text('Login',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white)),
              ))
        ],
      ),
    );
  }
}
