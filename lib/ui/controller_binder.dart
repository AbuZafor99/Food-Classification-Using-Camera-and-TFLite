import 'package:get/get.dart';
import '../data/models/image_model.dart';
import 'controllers/food_classifire_controller.dart';

class ClassifierBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodClassifierController>(() => FoodClassifierController(
      imageModel: Get.find(),
    ));
    Get.lazyPut<ImageModel>(() => ImageModel());
  }
}