import 'package:image_picker/image_picker.dart';

Future<XFile?> takePicture() async {
  final ImagePicker picker = ImagePicker();
  final XFile? photo = await picker.pickImage(source: ImageSource.camera);

  return photo;
}

Future<XFile?> takeImageGallery() async {
  final ImagePicker picker = ImagePicker();
  final XFile? photo = await picker.pickImage(source: ImageSource.gallery);

  return photo;
}

