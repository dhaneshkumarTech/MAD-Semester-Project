import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:itour_planner/LoginScreen/login_screen.dart';
import 'package:provider/provider.dart';
import './SplashScreen/splash_screen.dart';
import 'DashBoardScreen/dashboard_screen.dart';
import 'FirebaseServices/authentication_service.dart';
import 'Profile/profileScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider( 
    providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance)
        ),
        StreamProvider(
          create: (context) => context.read<AuthenticationService>().authStateChanges, 
          initialData: null,
        ),
      ],
    child: MaterialApp(
      home: Directionality(
          textDirection: TextDirection.rtl, child: SplashScreen()),
      debugShowCheckedModeBanner: false,
    ),);
  }
}


class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();
    
    if (firebaseUser != null) {
      return const DashboardScreen();
    } else {
      return const LoginScreen();
    }

  }
}