import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../data/models/image_model.dart';

class FoodClassifierController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  final ImageModel imageModel;

  FoodClassifierController({required this.imageModel});

  Future<void> pickImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imageModel.selectedImage.value = File(pickedFile.path);
    }
  }

  Future<void> captureImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      imageModel.selectedImage.value = File(pickedFile.path);
    }
  }
}
