import 'package:s_mobills/modules/profile/module.dart';

class UserUpdate {
  const UserUpdate({
    required this.name,
    required this.email,
    this.password,
  });

  factory UserUpdate.toDomain({required EditState state}) {
    return UserUpdate(
      name: state.name,
      email: state.email.trim(),
      password: state.password.isNotEmpty ? state.password : null,
    );
  }

  final String name;
  final String email;
  final String? password;
}
