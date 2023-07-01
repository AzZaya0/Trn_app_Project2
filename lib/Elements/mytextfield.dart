// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  String hintText;
  bool obscureText;
  MyTextField({Key? key, required this.hintText, required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 293,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: GoogleFonts.inter(
                    fontWeight: FontWeight.bold, fontSize: 18),
                filled: true,
                fillColor: Color(0xffE3E9FF),
                contentPadding: EdgeInsets.all(12.00),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.00),
                    borderSide: BorderSide(color: Colors.black87)))),
      ),
    );
  }
}
