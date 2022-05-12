import 'package:flutter/material.dart';
import 'SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

void newFunc() {}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Directionality(
          textDirection: TextDirection.rtl, child: SplashScreen()),
      debugShowCheckedModeBanner: false,
    );
  }
}
