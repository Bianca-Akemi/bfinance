import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:s_mobills/core/helpers/typedefs.dart';
import 'package:s_mobills/modules/auth/domain/model/user.dart';

part 'user_request.freezed.dart';

class AppUtils {
  /// A utility method to convert any instance to null
  static T? toNull<T>(Object? _) => null;
}

@freezed
abstract class UserRequest with _$UserRequest {
  factory UserRequest({
    required String name,
    required String email,
    required String password,
  }) = _UserRequest;

  UserRequest._();

  factory UserRequest.toData({required User user}) {
    return UserRequest(
      name: user.name,
      email: user.email,
      password: user.password,
    );
  }

  static JSON toUpdateJson({String? name, String? email, String? password}) {
    return <String, Object?>{
      if (name != null) 'Name': name,
      if (email != null) 'Email': email,
      if (password != null) 'Password': password,
    };
  }

  JSON toJson() {
    return <String, Object?>{
      'Name': name,
      'Email': email,
      'Password': password,
      'Age': 18,
    };
  }
}
