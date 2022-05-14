import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:itour_planner/FirebaseServices/authentication_service.dart';
import 'package:provider/provider.dart';

class UserDashBoard extends StatelessWidget {
  const UserDashBoard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Dashboard'),
        
      ),
      body: Column(
        children: [
          Center(
          child: (firebaseUser != null)? Text('${firebaseUser.email}', textScaleFactor: 2.0,): Text("No User"),
          ),
          Padding(padding: EdgeInsets.all(20.0), child: ElevatedButton(child: Text("Sign Out"), onPressed: () => context.read<AuthenticationService>().signOut(),),)
        ]
      ),
    );
  }
}