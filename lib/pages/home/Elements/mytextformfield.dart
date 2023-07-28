import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFormField extends StatelessWidget {
  String hintText;
  bool obscureText;
  final TextEditingController usercontroller;
  bool? enabled;
  MyTextFormField({
    Key? key,
    required this.hintText,
    required this.obscureText,
    required this.usercontroller,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: usercontroller,
        obscureText: obscureText,
        enabled: enabled,
        decoration: InputDecoration(
            labelText: hintText,
            labelStyle: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 25,
                color: Colors.black87),
            hintStyle:
                GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 18),
            filled: true,
            fillColor: Color(0xffE3E9FF),
            contentPadding: EdgeInsets.all(12.00),
            disabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.00),
                borderSide: BorderSide(color: Colors.black87))));
  }
}
