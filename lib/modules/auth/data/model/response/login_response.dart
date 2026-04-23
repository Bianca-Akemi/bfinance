import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:s_mobills/core/helpers/typedefs.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    @JsonKey(name: 'Token') required String token,
  }) = _LoginResponse;

  LoginResponse._();

  factory LoginResponse.fromJson(JSON json) => _$LoginResponseFromJson(json);
}
