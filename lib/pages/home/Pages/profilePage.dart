import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trn_project_2/Elements/FrameGrad.dart';
import 'package:trn_project_2/pages/Login&signup/elements/mytextfieldL.dart';
import 'package:trn_project_2/pages/home/Elements/mytextformfield.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final user = FirebaseAuth.instance.currentUser!;
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController Phonecontroller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    usernamecontroller = TextEditingController(text: "hello");
    emailcontroller = TextEditingController(text: "hello");
    Phonecontroller = TextEditingController(text: "hello");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ProfilePage'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: LayoutBuilder(
            builder: (context, Constraints) => SingleChildScrollView(
                child: Mygraient(
                    myheight: Constraints.maxHeight,
                    mywidth: Constraints.maxWidth,
                    wedg: Stack(
                      children: [
                        Center(
                            child: Container(
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black38,
                                          spreadRadius: 6,
                                          blurRadius: 7,
                                          offset: Offset(7, 13))
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(31.0)),
                                height: Constraints.maxHeight * 0.75,
                                width: Constraints.maxWidth * 0.8,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 70, left: 20, right: 20),
                                      child: MyTextFormField(
                                          enabled: false,
                                          hintText: 'Username',
                                          obscureText: false,
                                          usercontroller: usernamecontroller),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, left: 20, right: 20),
                                      child: MyTextFormField(
                                          enabled: false,
                                          hintText: 'Email',
                                          obscureText: false,
                                          usercontroller: emailcontroller),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, left: 20, right: 20),
                                      child: MyTextFormField(
                                          enabled: false,
                                          hintText: 'Phone Number',
                                          obscureText: false,
                                          usercontroller: Phonecontroller),
                                    )
                                  ],
                                ))),
                        Container(
                          alignment: Alignment(0, -0.87),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: (user.photoURL == null)
                                  ? Image.network(
                                      'https://img.freepik.com/premium-vector/young-man-avatar-isolated-icon-vector-illustration-design_24877-15466.jpg?size=626&ext=jpg&ga=GA1.1.388573599.1678453951&semt=ais')
                                  : Image.network(user.photoURL!)),
                        ),
                      ],
                    )))));
  }
}
