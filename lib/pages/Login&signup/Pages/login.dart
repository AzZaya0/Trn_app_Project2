// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trn_project_2/Elements/FrameGrad.dart';
import 'package:trn_project_2/pages/Login&signup/elements/Login&signup_Switch.dart';
import 'package:trn_project_2/pages/Login&signup/Pages/sublogin.dart';
import 'package:trn_project_2/pages/Login&signup/Pages/subsignup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late PageController _pageController;
  int currentpage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController =
        PageController(initialPage: currentpage, viewportFraction: 0.99);

    _pageController.addListener(() {
      setState(() {
        currentpage = _pageController.page!.toInt();
        (currentpage == 0)
            ? (newcolor1 = Color(0xffFEEEEE), newcolor2 = Colors.white)
            : (newcolor2 = Color(0xffFEEEEE), newcolor1 = Colors.white);

        // if (currentpage == 0) {
        //   newcolor1 = Color(0xffFEEEEE);
        //   newcolor2 = Colors.white;
        // } else {
        //   newcolor2 = Color(0xffFEEEEE);
        //   newcolor1 = Colors.white;
        // }
      });
    });
  }

  late Color newcolor1 = Color(0xffFEEEEE);
  late Color newcolor2 = Colors.white;

  void page0() {
    _pageController.previousPage(
        duration: Duration(milliseconds: 200), curve: Curves.linear);

    // setState(() {
    //   newcolor1 = (newcolor2 == Colors.white && newcolor2 == Color(0xffFEEEEE))
    //       ? Colors.white
    //       : Color(0xffFEEEEE);
    //   newcolor2 = Colors.white;
    // });
  }

  void page1() {
    _pageController.nextPage(
        duration: Duration(milliseconds: 200), curve: Curves.linear);
    // // newcolor = (newcolor == Colors.white) ? Colors.pink : Colors.white;
    // setState(() {
    //   newcolor2 = (newcolor1 == Colors.white && newcolor1 == Color(0xffFEEEEE))
    //       ? Colors.white
    //       : Color(0xffFEEEEE);
    //   newcolor1 = Colors.white;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
      builder: (context, Constraints) => SingleChildScrollView(
        child: Column(children: [
          //<=---------------passing the patameters 2 double and 1 widget -------------=>
          Mygraient(
            myheight: Constraints.maxHeight,
            mywidth: Constraints.maxWidth,
            wedg: Center(
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 6,
                          blurRadius: 7,
                          offset: Offset(7, 13))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(31.0)),
                height: Constraints.maxHeight * 0.65,
                width: Constraints.maxWidth * 0.8,
                child: Column(
                  // this is inside the shadowed box
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0)),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: page0,
                              child: LoginButtonToggle(
                                mycolor: newcolor1,
                                mytext: 'Login',
                              ),
                            ),
                            VerticalDivider(
                              width: 15,
                              thickness: 1,
                              color: Colors.black,
                              indent: 10,
                              endIndent: 10,
                            ),
                            GestureDetector(
                              onTap: page1,
                              child: LoginButtonToggle(
                                mycolor: newcolor2,
                                mytext: 'Signup',
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: PageView(
                        controller: _pageController,
                        children: [Sublogin(), Subsignup()],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
