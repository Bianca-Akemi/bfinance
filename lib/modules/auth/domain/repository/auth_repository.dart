import 'dart:typed_data';

import 'package:s_mobills/modules/auth/module.dart';

abstract class AuthRepository {
  Future<User> createAccount({required User user});

  Future<Token> login({required String email, required String password});

  Future<User> info();

  Future<void> update({required UserUpdate user});

  Future<Uint8List?> profilePhoto();

  Future<void> uploadProfilePhoto({required String filePath});

  Future<void> deleteProfilePhoto();

  Future<void> saveToken({required String value});

  Future<void> delete();

  Future<void> removeToken();

  Future<void> logout();
}
