import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:itour_planner/FirebaseServices/authentication_service.dart';
import 'package:itour_planner/LoginScreen/login_screen.dart';
import 'package:itour_planner/VerifiedScreen/verified_screen.dart';
import 'package:itour_planner/main.dart';
import 'package:provider/provider.dart';

class EmailVerificationScreen extends StatefulWidget {
  @override
  _EmailVerificationScreenState createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final auth = FirebaseAuth.instance;
  //late User user;
  late Timer timer;

  @override
  void initState() {
    User user = auth.currentUser!;
    user.sendEmailVerification();

    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      checkEmailVerified();
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        SizedBox(
          width: 10.0,
          height: 200.0,
        ),
        Text('An email has been sent to you please verify'),
        FloatingActionButton(
            child: Text("OK"),
            onPressed: () async{
              await context.read<AuthenticationService>().signOut();
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AuthenticationWrapper()));
            })
      ],
    )));
  }

  Future<void> checkEmailVerified() async {
    User user = auth.currentUser!;
    await user.reload();

    if (user.emailVerified) {
      timer.cancel();
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => VerifiedScreen()));
    }
  }
}
