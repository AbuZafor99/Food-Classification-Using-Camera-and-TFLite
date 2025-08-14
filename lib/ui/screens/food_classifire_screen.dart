import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/food_classifire_controller.dart';

class FoodClassifierScreen extends GetView<FoodClassifierController> {
  const FoodClassifierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Classifier', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Obx(() => controller.imageModel.selectedImage.value != null
                  ? ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.file(
                  controller.imageModel.selectedImage.value!,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              )
                  : const Placeholder(
                fallbackHeight: 300,
                color: Colors.grey,
                child: Center(child: Text('No image selected')),
              )),
              const SizedBox(height: 20),

              const Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: controller.pickImageFromGallery,
                    icon: const Icon(Icons.photo_library),
                    label: const Text('Pick from Gallery'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      backgroundColor: Colors.lightGreen,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: controller.captureImageFromCamera,
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Take a Photo'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
