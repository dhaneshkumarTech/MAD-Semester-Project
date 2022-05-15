import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:itour_planner/LoginScreen/android_login_screen.dart';
import 'package:itour_planner/LoginScreen/ios_login_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? const IOSLoginScreen() : const AndroidLoginScreen();
  }
}
