import 'package:flutter/material.dart';
import 'package:trn_project_2/Elements/mytextfield.dart';

class Subsignup extends StatelessWidget {
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  Subsignup({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyTextField(
              hintText: 'Email',
              obscureText: false,
              usercontroller: emailcontroller),
          SizedBox(height: 10),
          MyTextField(
            usercontroller: passcontroller,
            hintText: 'Password',
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
