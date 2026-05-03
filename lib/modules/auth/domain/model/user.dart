import 'package:s_mobills/modules/auth/module.dart';

class User {
  const User({
    required this.name,
    required this.email,
    required this.password,
    this.id,
  });

  factory User.toDomain({required SignUpState state}) {
    return User(
      name: state.name,
      email: state.email.trim(),
      password: state.password,
    );
  }

  factory User.fromData({required UserResponse data}) {
    return User(
      id: data.id,
      name: data.name,
      email: data.email,
      password: '',
    );
  }

  final int? id;
  final String name;
  final String email;
  final String password;
}
