import 'dart:typed_data';

import 'package:s_mobills/modules/auth/module.dart';

class GetProfilePhotoUseCase {
  const GetProfilePhotoUseCase({required this.repository});

  final AuthRepository repository;

  Future<Uint8List?> call() async {
    return repository.profilePhoto();
  }
}
