import 'package:flutter/material.dart';
import 'package:trn_project_2/Elements/FrameGrad.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, Constraints) => Mygraient(
              myheight: Constraints.maxHeight,
              mywidth: Constraints.maxWidth,
              wedg: Container())),
    );
  }
}
