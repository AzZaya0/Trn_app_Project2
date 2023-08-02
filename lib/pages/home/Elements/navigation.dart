// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:trn_project_2/pages/home/Pages/homepage.dart';
import 'package:trn_project_2/pages/home/Pages/profilePage.dart';
import 'package:trn_project_2/pages/home/Pages/settingPage.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _MNnavigationBarState();
}

class _MNnavigationBarState extends State<MyNavigationBar> {
  int _pageIndex = 0;
  List<Widget> _pages = [HomePage(), SettingPage()];
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      _pages.elementAt(_pageIndex),
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Align(
            alignment: Alignment(0, 1),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: BottomNavigationBar(
                currentIndex: _pageIndex,
                selectedItemColor: Color(0xff1355D4),
                unselectedItemColor: Colors.black54,
                onTap: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        size: 35,
                      ),
                      label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.settings,
                        size: 35,
                      ),
                      label: 'settings')
                ],
              ),
            )),
      )
    ]);
  }
}
