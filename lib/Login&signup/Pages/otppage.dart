import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trn_project_2/Elements/FrameGrad.dart';
import 'package:trn_project_2/Login&signup/Pages/otppage.dart';
import 'package:trn_project_2/Login&signup/elements/myBackButtonL.dart';
import 'package:trn_project_2/Login&signup/elements/mytextfieldL.dart';
import 'package:trn_project_2/Login&signup/elements/mybuttonL.dart';

class OTPpage extends StatefulWidget {
  const OTPpage({super.key});

  @override
  State<OTPpage> createState() => _OTPpageState();
}

class _OTPpageState extends State<OTPpage> {
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
                                        'https://img.freepik.com/free-photo/3d-hand-using-online-banking-app-smartphone_107791-16639.jpg?w=826&t=st=1689319591~exp=1689320191~hmac=9a82070caad5ee8a66963cdd6d4884c9147427188a42c25db25ecc1e5a6c41df'),

                                    // child: Image.asset(
                                    //     'lib/assects/phoneVerification.jpg'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Text(
                                    'Enter OTP',
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
                                    'Enter 4 digit OTP from the device with \nthe number which you had provided.',
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
                                      hintText: 'Enter OTP',
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
