import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  Function()? ontapfunction;
  String mytext;
  MyButton({super.key, required this.ontapfunction, required this.mytext});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapfunction,
      child: Container(
          height: 54,
          width: 293,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.00),
            color: Color(0xff275EEA),
          ),
          child: Center(
            child: Text(mytext,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white)),
          )),
    );
  }
}
