import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trn_project_2/Elements/FrameGrad.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({super.key});

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
            builder: (context, Constraints) => SingleChildScrollView(
                    child: Column(children: [
                  Mygraient(
                    myheight: Constraints.maxHeight,
                    mywidth: Constraints.maxWidth,
                    wedg: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black38,
                                  spreadRadius: 6,
                                  blurRadius: 7,
                                  offset: Offset(7, 13))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(31.0)),
                        height: Constraints.maxHeight * 0.65,
                        width: Constraints.maxWidth * 0.8,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  height: 233,
                                  width: 233,
                                  child: Image.asset(
                                      'lib/assects/phoneVerification.jpg'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  'Create Account',
                                  style: GoogleFonts.inder(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade700),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ]))));
  }
}
