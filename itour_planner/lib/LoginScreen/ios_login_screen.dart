import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:itour_planner/ResetPassword/reset_password.dart';
import 'package:itour_planner/SignUpScreen/sign_up.dart';
import 'package:itour_planner/otpScreen/otp_screen.dart';

class IOSLoginScreen extends StatefulWidget {
  const IOSLoginScreen({Key? key}) : super(key: key);

  @override
  State<IOSLoginScreen> createState() => _IOSLoginScreenState();
}

class _IOSLoginScreenState extends State<IOSLoginScreen> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final passwordRegex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  String? _validatePassword(value) {
    if (value!.isEmpty) {
      return 'Enter password';
    } else if (!passwordRegex.hasMatch(value)) {
      return 'Password must have\nAt least 8 characters including\nOne upper case letter\nOne number\nOne special character';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 100,
                ),
                width: double.infinity,
                height: 250,
                child: SizedBox(
                  height: 60,
                  child: Image.asset('assets/images/app_logo.png'),
                ),
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(173, 37, 51, 1),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromRGBO(173, 37, 51, 1),
                      Color.fromRGBO(250, 50, 70, 1),
                    ],
                  ),
                ),
              ),
              CupertinoFormSection(
                header: const Text('Account Credentials'),
                footer: const Divider(),
                margin: const EdgeInsets.all(12),
                children: [
                  CupertinoTextFormFieldRow(
                    prefix: Icon(
                      Icons.mail_outline,
                      color: themeColor,
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    placeholder: 'Email or phone number',
                    validator: (email) =>
                        email != null && !EmailValidator.validate(email)
                            ? 'Enter a valid email'
                            : null,
                  ),
                  CupertinoTextFormFieldRow(
                    prefix: Icon(
                      Icons.lock_outlined,
                      color: themeColor,
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    placeholder: 'password',
                    validator: (password) {
                      return _validatePassword(password);
                    },
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerRight,
                child: CupertinoButton(
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPassword(),
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                width: double.infinity,
                child: CupertinoButton(
                  color: themeColor,
                  child: const Text('Log In'),
                  onPressed: () {
                    final form = _formKey.currentState;
                    if (form!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OTP(_emailController.text),
                        ),
                      );
                    }
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.only(left: 100, right: 100),
                child: SignInButton(
                  Buttons.Google,
                  text: "Sign In with Google",
                  onPressed: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const DefaultTextStyle(
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontSize: 16),
                      child: Text('Don\'t have an account?'),
                    ),
                    CupertinoButton(
                      pressedOpacity: 0.1,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                alignment: Alignment.bottomRight,
                width: double.infinity,
                child: SizedBox(
                  height: 80,
                  child: Image.asset("assets/images/footer_icon.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
