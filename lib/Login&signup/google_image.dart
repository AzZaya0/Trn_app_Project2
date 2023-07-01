import 'package:flutter/material.dart';

class Google_imageLog extends StatelessWidget {
  const Google_imageLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 60,
        width: 60,
        child: Image.asset('lib/assects/google.png'));
  }
}
