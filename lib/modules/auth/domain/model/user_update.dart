import 'package:s_mobills/modules/profile/module.dart';

class UserUpdate {
  const UserUpdate({
    required this.name,
    required this.age,
    required this.email,
  });

  factory UserUpdate.toDomain({required EditState state}) {
    return UserUpdate(
      name: state.name,
      age: 18,
      email: state.email.trim(),
    );
  }

  final String name;
  final int age;
  final String email;
}
