import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lmra/pages/New_Onboarding.dart';
import 'constant/constants.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LMRA',
      theme: ThemeData(
      ),
      home:AnimatedSplashScreen(
        animationDuration:Duration(milliseconds: 3000),
        backgroundColor: kPurple,
        splash: Image.asset('images/stc_logo.png'),
        nextScreen: OnBoardingPage(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
      ),
    );
  }
}
