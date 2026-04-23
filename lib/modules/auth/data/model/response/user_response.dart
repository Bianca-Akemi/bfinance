import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:s_mobills/core/helpers/typedefs.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
abstract class UserResponse with _$UserResponse {
  factory UserResponse({
    @JsonKey(name: 'Id') required int id,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Email') required String email,
  }) = _UserResponse;

  UserResponse._();

  factory UserResponse.fromJson(JSON json) => _$UserResponseFromJson(json);
}
