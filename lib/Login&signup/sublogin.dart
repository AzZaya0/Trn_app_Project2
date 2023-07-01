// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trn_project_2/Elements/mytextfield.dart';
import 'package:trn_project_2/Login&signup/facebook_image.dart';
import 'package:trn_project_2/Login&signup/github_image.dart';
import 'package:trn_project_2/Login&signup/google_image.dart';

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
          MyTextField(hintText: 'Email or Username', obscureText: false),
          SizedBox(height: 10),
          MyTextField(
            hintText: 'Password',
            obscureText: true,
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
          Container(
              height: 54,
              width: 293,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.00),
                color: Color(0xff275EEA),
              ),
              child: Center(
                child: Text('Login',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white)),
              )),
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
