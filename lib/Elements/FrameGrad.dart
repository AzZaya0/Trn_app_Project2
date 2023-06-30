// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Mygraient extends StatelessWidget {
  final double myheight;
  final double mywidth;
  final Widget wedg;
  const Mygraient(
      {super.key,
      required this.myheight,
      required this.mywidth,
      required this.wedg});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: myheight,
      width: mywidth,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xFFE9E9E9),
            Color(0xFFFFFFFF),
            Color(0xFF8E76F4),
            Color(0xFF6590FF),
          ],
              stops: [
            0.0,
            0.05,
            0.5,
            1.0
          ])),
      child: wedg,
    );
  }
}
