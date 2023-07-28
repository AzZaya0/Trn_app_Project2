import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trn_project_2/Elements/FrameGrad.dart';
import 'package:trn_project_2/pages/Login&signup/Pages/otppage.dart';
import 'package:trn_project_2/pages/Login&signup/elements/myBackButtonL.dart';
import 'package:trn_project_2/pages/Login&signup/elements/mytextfieldL.dart';
import 'package:trn_project_2/pages/Login&signup/elements/mybuttonL.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({super.key});
  static String verify = "";

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  final numbercontroller = TextEditingController();

  void _sendOTP() async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(child: CircularProgressIndicator());
      },
    );

    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: "+977${numbercontroller.text}",
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance.signInWithCredential(credential);
          Navigator.pop(context);
        },
        verificationFailed: (e) {
          Navigator.pop(context);
          showerrorMessage("Try Again");
        },
        codeSent: ((verificationId, forceResendingToken) {
          PhoneLogin.verify = verificationId;

          Navigator.push(
              context,
              PageTransition(
                  child: OTPpage(),
                  type: PageTransitionType.fade,
                  duration: Duration(milliseconds: 200)));
        }),
        codeAutoRetrievalTimeout: (verificationId) {},
      );
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
                                    // child: Image.network(
                                    //     'https://img.freepik.com/free-photo/bank-card-mobile-phone-online-payment_107791-16646.jpg?w=826&t=st=1689314634~exp=1689315234~hmac=cc98dd92157d8118db1b7408f65785f093578d567fe22d898de588ea6b2d341e'),

                                    child: Image.asset(
                                        'lib/assects/phoneVerification.jpg'),
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
                                      keyboardtype: TextInputType.number,
                                      usercontroller: numbercontroller),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Center(
                                  child: MyButton(
                                      ontapfunction: () {
                                        _sendOTP();
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
