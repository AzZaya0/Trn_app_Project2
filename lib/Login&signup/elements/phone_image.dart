// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trn_project_2/Login&signup/Pages/phoneLogin.dart';
import 'package:trn_project_2/Login&signup/services/auth_service.dart';

class Phone_imageLog extends StatelessWidget {
  const Phone_imageLog({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PhoneLogin()));
      },
      child: Container(
          margin: EdgeInsets.all(10),
          height: 60,
          width: 60,
          child: Image.asset('lib/assects/phonex.png')),
    );
  }
}
