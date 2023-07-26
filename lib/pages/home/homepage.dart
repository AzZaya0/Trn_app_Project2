// ignore_for_file: sort_child_properties_last, prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trn_project_2/Elements/FrameGrad.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void signOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: LayoutBuilder(
          builder: (context, Constraints) => SingleChildScrollView(
              child: Mygraient(
                  myheight: Constraints.maxHeight,
                  mywidth: Constraints.maxWidth,
                  wedg: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 30.0, left: 30.0, top: 30.0),
                          child: Container(
                            height: Constraints.maxHeight * 0.1,
                            width: Constraints.maxWidth,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 116 + 20,
                                      width: 84 + 20,
                                      child: Image.asset(
                                          'lib/assects/trn logo.png')),
                                  GestureDetector(
                                    onTap: signOut,
                                    child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black38,
                                                spreadRadius: 2,
                                                blurRadius: 4,
                                                offset: Offset(2, 2))
                                          ],
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(13),
                                            child: (user.photoURL == null)
                                                ? Image.network(
                                                    'https://img.freepik.com/premium-vector/young-man-avatar-isolated-icon-vector-illustration-design_24877-15466.jpg?size=626&ext=jpg&ga=GA1.1.388573599.1678453951&semt=ais')
                                                : Image.network(
                                                    user.photoURL!))),
                                  )
                                ]),
                          )),
                      Divider(
                        color: Color(0xffD9D9D9),
                        thickness: 3,
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: Constraints.maxHeight * 0.2,
                          width: Constraints.maxHeight * 0.9,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 180,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(31)),
                                ),
                                Container(
                                  height: 180,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(31)),
                                )
                              ]),
                        ),
                      ),
                      Container(
                        height: Constraints.maxHeight * 0.2,
                        width: Constraints.maxHeight * 0.9,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(31)),
                              ),
                              Container(
                                height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(31)),
                              )
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 200,
                          width: Constraints.maxWidth,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffD2D2D2),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(45),
                                    topRight: Radius.circular(45))),
                          ),
                        ),
                      ),
                    ],
                  )))),
    ));
  }
}
