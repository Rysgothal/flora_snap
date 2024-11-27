import 'package:image_picker/image_picker.dart';

Future<XFile?> takePicture() async {
  final ImagePicker picker = ImagePicker();

  // Request camera access and take a photo
  final XFile? photo = await picker.pickImage(source: ImageSource.camera);

  // Return the photo
  return photo;
}