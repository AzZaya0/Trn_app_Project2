import 'package:flutter/material.dart';
import 'package:trn_project_2/Elements/mytextfield.dart';

class Subsignup extends StatelessWidget {
  const Subsignup({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyTextField(hintText: 'Email', obscureText: false),
          SizedBox(height: 10),
          MyTextField(
            hintText: 'Password',
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
