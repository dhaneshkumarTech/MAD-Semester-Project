import 'dart:convert';

class UserModel {
  final String uid;
  final String email;
  final String password;
  final String name;
  final String profilePicURL;

  UserModel(
    this.uid,
    this.email,
    this.password,
    this.name,
    this.profilePicURL,
  );

  UserModel copyWith({
    String? uid,
    String? email,
    String? password,
    String? name,
    String? profilePicURL,
  }) {
    return UserModel(
      uid ?? this.uid,
      email ?? this.email,
      password ?? this.password,
      name ?? this.name,
      profilePicURL ?? this.profilePicURL,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'uid': uid});
    result.addAll({'email': email});
    result.addAll({'password': password});
    result.addAll({'name': name});
    result.addAll({'profilePicURL': profilePicURL});
  
    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      map['uid'] ?? '',
      map['email'] ?? '',
      map['password'] ?? '',
      map['name'] ?? '',
      map['profilePicURL'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(uid: $uid, email: $email, password: $password, name: $name, profilePicURL: $profilePicURL)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserModel &&
      other.uid == uid &&
      other.email == email &&
      other.password == password &&
      other.name == name &&
      other.profilePicURL == profilePicURL;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
      email.hashCode ^
      password.hashCode ^
      name.hashCode ^
      profilePicURL.hashCode;
  }
}
