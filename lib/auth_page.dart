// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:trn_project_2/pages/Login&signup/Pages/login.dart';
import 'package:trn_project_2/pages/home/Pages/homepage.dart';

import 'pages/home/Elements/navigation.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MyNavigationBar();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
