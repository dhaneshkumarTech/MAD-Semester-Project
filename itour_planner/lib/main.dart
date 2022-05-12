import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './SplashScreen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

void newFunc() {
  print("Hello");
}

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
