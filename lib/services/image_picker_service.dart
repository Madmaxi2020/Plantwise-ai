import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final ImagePicker _picker = ImagePicker();

  Future<XFile?> pickFromCamera() {
    return _picker.pickImage(source: ImageSource.camera, imageQuality: 85);
  }

  Future<XFile?> pickFromGallery() {
    return _picker.pickImage(source: ImageSource.gallery, imageQuality: 85);
  }
}
