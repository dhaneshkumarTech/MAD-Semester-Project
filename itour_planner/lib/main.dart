import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:firebase_core/firebase_core.dart';
import './splash_screen.dart';
=======
import 'SplashScreen/splash_screen.dart';
>>>>>>> 91a2947f50b52f48844cc1a7131cf647affbafcc

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
