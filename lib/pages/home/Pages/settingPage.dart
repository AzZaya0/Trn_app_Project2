import 'dart:io';

import 'package:flutter/material.dart';
import 'package:trn_project_2/Elements/FrameGrad.dart';
import 'package:trn_project_2/pages/home/Elements/tiles.dart';

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
          wedg: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTiles(
                      preImage: 'lib/assects/home/logout1.png',
                      texts: 'Logout',
                      sufImaage: 'lib/assects/home/Arrow.png',
                      height: Constraints.maxHeight * 0.1,
                      width: Constraints.maxWidth * 0.90),
                  SizedBox(
                    height: Constraints.maxHeight * 0.04,
                  ),
                  MyTiles(
                      height: Constraints.maxHeight * 0.1,
                      width: Constraints.maxWidth * 0.90,
                      preImage: 'lib/assects/home/themes.png',
                      texts: 'Theme',
                      sufImaage: 'lib/assects/home/Arrow.png')
                ],
              ),
            ),
          )),
    ));
  }
}
