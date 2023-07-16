import 'package:flutter/material.dart';
import 'package:trn_project_2/Login&signup/onboarding/onboardingscreen.dart';
import 'package:trn_project_2/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:trn_project_2/pages/home/auth_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    // home: Onboarding(),
    home: AnimatedSplashScreen(
        animationDuration: Duration(milliseconds: 400),
        splash: Image.asset('lib/assects/trn logo.png'),
        nextScreen: AuthPage(),
        pageTransitionType: PageTransitionType.fade,
        duration: 1500), // AuthPage(),
    debugShowCheckedModeBanner: false,
  ));
}
