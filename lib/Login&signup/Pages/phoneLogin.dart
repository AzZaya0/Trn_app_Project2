import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trn_project_2/Elements/FrameGrad.dart';
import 'package:trn_project_2/Login&signup/Pages/otppage.dart';
import 'package:trn_project_2/Login&signup/elements/myBackButtonL.dart';
import 'package:trn_project_2/Login&signup/elements/mytextfieldL.dart';
import 'package:trn_project_2/Login&signup/elements/mybuttonL.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({super.key});

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  final numbercontroller = TextEditingController();
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
                        child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Container(
                                    height: Constraints.maxHeight * 0.25,
                                    width: Constraints.maxWidth * 0.83,
                                    child: Image.network(
                                        'https://img.freepik.com/free-photo/bank-card-mobile-phone-online-payment_107791-16646.jpg?w=826&t=st=1689314634~exp=1689315234~hmac=cc98dd92157d8118db1b7408f65785f093578d567fe22d898de588ea6b2d341e'),

                                    // child: Image.asset(
                                    //     'lib/assects/phoneVerification.jpg'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Text(
                                    'Create Account',
                                    style: GoogleFonts.inter(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey.shade700),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Text(
                                    'You will receive 4 digit  OTP \non your device',
                                    style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey.shade700),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: MyTextField(
                                      hintText: 'Phone Number',
                                      obscureText: false,
                                      usercontroller: numbercontroller),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Center(
                                  child: MyButton(
                                      ontapfunction: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const OTPpage()));
                                      },
                                      mytext: 'Request OTP'),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                MyBackButton_Login(
                                  ontap: () => Navigator.pop(context),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}
