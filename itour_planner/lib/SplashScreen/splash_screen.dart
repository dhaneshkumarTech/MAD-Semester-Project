import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:itour_planner/DashBoardScreen/dashboard_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 78,
            child: Image.asset("assets/images/app_logo.png"),
          ),
        ],
      ),
      nextScreen: const DashboardScreen(),
      backgroundColor: const Color.fromRGBO(173, 37, 51, 1),
      splashTransition: SplashTransition.scaleTransition,
      duration: 1000,
      pageTransitionType: PageTransitionType.bottomToTop,
      animationDuration: const Duration(seconds: 1),
    );
  }
}