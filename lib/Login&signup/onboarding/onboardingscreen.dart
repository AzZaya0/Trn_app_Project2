import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        LiquidSwipe(
          slideIconWidget: Icon(Icons.arrow_back),
          pages: [
            Container(color: Colors.yellow),
            Container(color: Colors.deepOrange),
            Container(color: Colors.deepPurple),
          ],
        )
      ]),
    );
  }
}
