import 'package:flutter/material.dart';

class Github_imageLog extends StatelessWidget {
  const Github_imageLog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 60,
        width: 60,
        child: Image.asset('lib/assects/github.png'));
  }
}
