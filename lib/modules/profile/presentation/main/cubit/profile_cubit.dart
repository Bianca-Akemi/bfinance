import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:s_mobills/core/core.dart';
import 'package:s_mobills/modules/profile/module.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({
    required this.doGetUserInfoUseCase,
    required this.doLogoutUserUseCase,
    required this.getProfilePhotoUseCase,
    required this.uploadProfilePhotoUseCase,
    required this.deleteProfilePhotoUseCase,
  }) : super(const ProfileState.initial());

  final DoGetUserInfoUseCase doGetUserInfoUseCase;
  final DoLogoutUserUseCase doLogoutUserUseCase;
  final GetProfilePhotoUseCase getProfilePhotoUseCase;
  final UploadProfilePhotoUseCase uploadProfilePhotoUseCase;
  final DeleteProfilePhotoUseCase deleteProfilePhotoUseCase;

  Future<void> info() async {
    try {
      emit(state.copyWith(isLoading: true));
      final user = await doGetUserInfoUseCase();
      final photoBytes = await getProfilePhotoUseCase();
      emit(
        state.copyWith(
          name: user.name,
          email: user.email,
          initialLetters: StringHelper.extractInitials(user.name),
          photoBytes: photoBytes,
        ),
      );
    } on SMobillsException catch (e) {
      AppRouter.showError(message: e.message);
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> editProfile() async {
    await AppRouter.router.pushNamed(Routes.profileEdit.name);
    await info();
  }

  Future<void> pickAndUploadPhoto() async {
    try {
      final picker = ImagePicker();
      final image = await picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 512,
        maxHeight: 512,
        imageQuality: 80,
      );

      if (image == null) return;

      emit(state.copyWith(isLoading: true));
      await uploadProfilePhotoUseCase(filePath: image.path);

      final photoBytes = await getProfilePhotoUseCase();
      emit(state.copyWith(photoBytes: photoBytes));
    } on PlatformException catch (e) {
      AppRouter.showError(
        message: e.message ?? 'Não foi possível abrir a galeria',
      );
    } on SMobillsException catch (e) {
      AppRouter.showError(message: e.message);
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> accounts() async {
    await AppRouter.router.pushNamed(Routes.profileAccounts.name);
  }

  bool get hasPhoto =>
      state.photoBytes != null && state.photoBytes!.isNotEmpty;

  Future<void> removePhoto() async {
    try {
      emit(state.copyWith(isLoading: true));
      await deleteProfilePhotoUseCase();
      emit(state.copyWith(photoBytes: null));
    } on SMobillsException catch (e) {
      AppRouter.showError(message: e.message);
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> logout() async {
    try {
      await doLogoutUserUseCase();
      AppRouter.router.goNamed(Routes.login.name);
    } on SMobillsException catch (e) {
      AppRouter.showError(message: e.message);
    } finally {}
  }
}
