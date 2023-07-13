import 'package:flutter/material.dart';

class Facebook_imageLog extends StatelessWidget {
  const Facebook_imageLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 60,
        width: 60,
        child: Image.asset('lib/assects/facebook.png'));
  }
}
