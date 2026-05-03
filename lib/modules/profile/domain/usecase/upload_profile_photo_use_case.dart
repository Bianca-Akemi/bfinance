import 'package:s_mobills/modules/auth/module.dart';

class UploadProfilePhotoUseCase {
  const UploadProfilePhotoUseCase({required this.repository});

  final AuthRepository repository;

  Future<void> call({required String filePath}) async {
    return repository.uploadProfilePhoto(filePath: filePath);
  }
}
