import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:s_mobills/core/helpers/typedefs.dart';
import 'package:s_mobills/modules/auth/module.dart';

part 'user_update_request.freezed.dart';

@freezed
abstract class UserUpdateRequest with _$UserUpdateRequest {
  factory UserUpdateRequest({
    required String name,
    required String email,
    String? password,
  }) = _UserUpdateRequest;

  UserUpdateRequest._();

  factory UserUpdateRequest.toData({required UserUpdate user}) {
    return UserUpdateRequest(
      name: user.name,
      email: user.email,
      password: user.password,
    );
  }

  static JSON toUpdateJson({
    String? name,
    String? email,
    String? password,
  }) {
    return <String, Object?>{
      if (name != null) 'Name': name,
      if (email != null) 'Email': email,
      if (password != null) 'Password': password,
      'Age': 18,
    };
  }

  JSON toJson() {
    return <String, Object?>{
      'Name': name,
      'Email': email,
      if (password != null) 'Password': password,
      'Age': 18,
    };
  }
}
