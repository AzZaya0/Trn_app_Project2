// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trn_project_2/pages/Login&signup/services/auth_service.dart';

class Google_imageLog extends StatelessWidget {
  const Google_imageLog({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: GoogleAuthX().googleSignin1,
      child: Container(
          margin: EdgeInsets.all(10),
          height: 60,
          width: 60,
          child: Image.asset('lib/assects/google.png')),
    );
  }
}
