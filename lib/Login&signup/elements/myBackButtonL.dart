import 'package:flutter/material.dart';

class MyBackButton_Login extends StatelessWidget {
  final void Function()? ontap;
  const MyBackButton_Login({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 74,
          width: 74,
          child: Image.asset('lib/assects/Login_backButton.png'),
        ),
      ),
    );
  }
}
