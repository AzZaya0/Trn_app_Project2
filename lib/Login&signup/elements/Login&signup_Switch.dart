// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButtonToggle extends StatelessWidget {
  String mytext;
  Color mycolor;
  LoginButtonToggle({Key? key, required this.mytext, required this.mycolor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 43,
      width: 124,
      decoration: BoxDecoration(
          color: mycolor, borderRadius: BorderRadius.circular(40.0)),
      child: Center(
        child: Text(
          mytext,
          style: GoogleFonts.jacquesFrancois(
            fontSize: 24, //decoration: TextDecoration.underline,
            //decorationStyle: TextDecorationStyle.solid
          ),
        ),
      ),
    );
  }
}
