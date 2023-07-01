// ignore_for_file: sort_child_properties_last, prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: signOut,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Hello ' + user.email!,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                color: Colors.pink,
              ),
            )
          ],
        ),
      ),
    );
  }
}
