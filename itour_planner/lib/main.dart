import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import './login_screen.dart';

void main() {
  runApp(const MyApp());
}

void newFunc() {}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('iTour Planner'),
          backgroundColor: const Color.fromRGBO(173, 37, 51, 1),
        ),
        body: const Center(
            child: Text(
          'iTour Planner',
          style: TextStyle(fontSize: 40),
        )));
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 78, child: Image.asset("assets/images/app_logo.png")),
        ],
      ),
      nextScreen: const LoginScreen(),
      backgroundColor: const Color.fromRGBO(173, 37, 51, 1),
      splashTransition: SplashTransition.slideTransition,
      duration: 2000,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 2),
    );
  }
}
