// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:page_transition/page_transition.dart';
import 'package:trn_project_2/Elements/FrameGrad.dart';
import 'package:trn_project_2/pages/home/Elements/profileTile.dart';
import 'package:trn_project_2/pages/home/Elements/tiles.dart';
import 'package:trn_project_2/pages/home/Pages/profilePage.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  void toprofile() {
    Navigator.push(
        context,
        PageTransition(
            child: ProfilePage(),
            type: PageTransitionType.fade,
            reverseDuration: Duration(microseconds: 100),
            duration: Duration(milliseconds: 200)));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: LayoutBuilder(
        builder: (context, Constraints) => Mygraient(
            myheight: Constraints.maxHeight,
            mywidth: Constraints.maxWidth,
            wedg: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: MyProfileTiles(
                        height: Constraints.maxHeight * 0.17,
                        width: Constraints.maxWidth * 0.90,
                        sufImaage: "lib/assects/home/Arrow.png",
                        ontap: toprofile,
                      ),
                    ),
                    SizedBox(
                      height: Constraints.maxHeight * 0.04,
                    ),
                    MyTiles(
                        ontap: () {},
                        height: Constraints.maxHeight * 0.1,
                        width: Constraints.maxWidth * 0.90,
                        preImage: 'lib/assects/home/themes.png',
                        texts: 'Theme',
                        sufImaage: 'lib/assects/home/Arrow.png'),
                    SizedBox(
                      height: Constraints.maxHeight * 0.04,
                    ),
                    MyTiles(
                        ontap: () {
                          FirebaseAuth.instance.signOut();
                          GoogleSignIn().signOut();
                        },
                        preImage: 'lib/assects/home/logout1.png',
                        texts: 'Logout',
                        sufImaage: 'lib/assects/home/Arrow.png',
                        height: Constraints.maxHeight * 0.1,
                        width: Constraints.maxWidth * 0.90),
                  ],
                ),
              ),
            )),
      )),
    );
  }
}
