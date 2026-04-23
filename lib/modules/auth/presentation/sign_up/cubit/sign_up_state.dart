part of 'sign_up_cubit.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState.initial({
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isLoading,
  }) = _Initial;
}
