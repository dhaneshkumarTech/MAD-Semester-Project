import 'package:flutter/material.dart';
import './splash_screen.dart';

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
      debugShowCheckedModeBanner: false,
    );
  }
}
