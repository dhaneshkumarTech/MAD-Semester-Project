import 'dart:convert';

class UserModel {
  final String uid;
  final String name;
  final String email;
  final String password;
  final String profile_pic;

  UserModel(this.uid, this.email, this.password, this.name, this.profile_pic);
}
