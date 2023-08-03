// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:trn_project_2/pages/home/Pages/settingPage.dart';

class Mygraient extends StatefulWidget {
  double? myheight;
  double? mywidth;
  Widget? wedg;
  bool themechange = false;

  Mygraient({
    super.key,
    this.myheight,
    this.mywidth,
    this.wedg,
  });

  @override
  State<Mygraient> createState() => _MygraientState(themechange);
}

class _MygraientState extends State<Mygraient> {
  bool themechange = false;
  _MygraientState(this.themechange);

  changecolor() {
    setState(() {
      themechange = !themechange;
      print('color changed');
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Color> lineargradient = [
      Color(0xFFE9E9E9),
      Color(0xFFFFFFFF),
      Color(0xFF8E76F4),
      Color(0xFF6590FF)
    ];
    List<Color> whitethemecolor = [
      Color(0xFFFaaFFF),
      Color(0xFFFaaFFF),
      Color(0xFFFaaFFF),
      Color(0xFFFaaFFF),
    ];
    return Container(
      height: widget.myheight,
      width: widget.mywidth,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: themechange ? whitethemecolor : lineargradient,
              stops: [0.0, 0.05, 0.5, 1.0])),
      child: widget.wedg,
    );
  }
}
