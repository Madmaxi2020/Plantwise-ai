import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedImageProvider = StateNotifierProvider<ImageNotifier, File?>((
  ref,
) {
  return ImageNotifier();
});

class ImageNotifier extends StateNotifier<File?> {
  ImageNotifier() : super(null);

  void setImage(File image) {
    state = image;
  }

  void clearImage() {
    state = null;
  }
}
