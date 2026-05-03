import 'package:s_mobills/modules/auth/module.dart';

class DeleteProfilePhotoUseCase {
  const DeleteProfilePhotoUseCase({required this.repository});

  final AuthRepository repository;

  Future<void> call() async {
    return repository.deleteProfilePhoto();
  }
}
