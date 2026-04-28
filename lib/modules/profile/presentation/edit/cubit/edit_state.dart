part of 'edit_cubit.dart';

@freezed
abstract class EditState with _$EditState {
  const factory EditState.initial({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String password,
    @Default('') String email,
    @Default(false) bool isLoading,
    @Default(false) bool startDeleteAccount,
  }) = _Initial;
}
