import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:login/Login/Login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.asset('asset/Logo.png'),
        nextScreen: const Login(),
        splashTransition: SplashTransition.scaleTransition,
        splashIconSize: 100,
        // pageTransitionType: PageTransitionType.leftToRightWithFade,
        duration: 3000,
      ),
    );
  }
}
