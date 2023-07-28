// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trn_project_2/pages/Login&signup/Pages/phoneLogin.dart';

class Phone_imageLog extends StatelessWidget {
  const Phone_imageLog({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: PhoneLogin(),
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 300)));
      },
      child: Container(
          margin: EdgeInsets.all(10),
          height: 60,
          width: 60,
          child: Image.asset('lib/assects/phonex.png')),
    );
  }
}
