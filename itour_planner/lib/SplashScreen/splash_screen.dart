import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
<<<<<<< HEAD
import 'package:itour_planner/main.dart';
=======
import 'package:itour_planner/DashBoardScreen/dashboard_screen.dart';
>>>>>>> 3751fb020ed78ab15a72ff84d129e62761b577aa
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
<<<<<<< HEAD
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 78,
              child: Image.asset("assets/images/app_logo.png"),
            ),
          ],
        ),
        nextScreen: const AuthenticationWrapper(),
        backgroundColor: const Color.fromRGBO(173, 37, 51, 1),
        splashTransition: SplashTransition.scaleTransition,
        duration: 1000,
        pageTransitionType: PageTransitionType.bottomToTop,
        animationDuration: const Duration(seconds: 1),
      );
=======
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
>>>>>>> 3751fb020ed78ab15a72ff84d129e62761b577aa
  }
}

