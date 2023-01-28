import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ass1/constants/constant_app.dart';
import 'package:ass1/login/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: const LoginScreen(),
      splash: Column(
        children: [
          Image.asset(
            'assets/images/appicon.png',
            height: 90,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Foodes App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      backgroundColor: ColorApp.backgroundColor,
      splashIconSize: 200,
      duration: 3000,
      // splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
    );
  }
}
