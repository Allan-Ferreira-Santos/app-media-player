import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_2_sales/screens/home/AppAccess.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color.fromRGBO(63, 63, 63, 1),
      splash: 'assets/images/load.gif',
      splashIconSize: 100,
      animationDuration: const Duration(seconds: 3),
      duration: 2500,
      splashTransition: SplashTransition.rotationTransition,
      nextScreen: const AppAccess(),
    );
  }
}
