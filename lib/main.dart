import 'package:flutter/material.dart';
import 'package:trn_project_2/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:trn_project_2/pages/home/auth_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: AuthPage(),
    debugShowCheckedModeBanner: false,
  ));
}
