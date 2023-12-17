// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  final String fullname;
  final String email;
  final String password;
  final String occupation;
  final String age;
  String? image;
  User({
    required this.fullname,
    required this.email,
    required this.password,
    required this.occupation,
    required this.age,
    this.image,
  });

  User copyWith({
    String? fullname,
    String? email,
    String? password,
    String? occupation,
    String? age,
    String? image,
  }) {
    return User(
      fullname: fullname ?? this.fullname,
      email: email ?? this.email,
      password: password ?? this.password,
      occupation: occupation ?? this.occupation,
      age: age ?? this.age,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullname': fullname,
      'email': email,
      'password': password,
      'occupation': occupation,
      'age': age,
      'image': image,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      fullname: map['fullname'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      occupation: map['occupation'] as String,
      age: map['age'] as String,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(fullname: $fullname, email: $email, password: $password, occupation: $occupation, age: $age, image: $image)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.fullname == fullname &&
        other.email == email &&
        other.password == password &&
        other.occupation == occupation &&
        other.age == age &&
        other.image == image;
  }

  @override
  int get hashCode {
    return fullname.hashCode ^
        email.hashCode ^
        password.hashCode ^
        occupation.hashCode ^
        age.hashCode ^
        image.hashCode;
  }
}
