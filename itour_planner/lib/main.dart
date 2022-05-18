import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:itour_planner/Screens/email_verification_screen.dart';
import 'package:itour_planner/Screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'Screens/splash_screen.dart';
import 'Screens/dashboard_screen.dart';
import 'FirebaseServices/authentication_service.dart';

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
            create: (_) => AuthenticationService(FirebaseAuth.instance)),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        home: Directionality(
            textDirection: TextDirection.rtl, child: SplashScreen()),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final firebaseUser = FirebaseAuth.instance.currentUser;
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      if (firebaseUser.emailVerified) {
        print("Signed In Successfully");
        return const DashboardScreen();
      } else {
        return EmailVerificationScreen();
      }
    } else {
      return const LoginScreen();
    }
  }
}
