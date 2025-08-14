import 'package:food_classification_using_camera_and_tflite/ui/controller_binder.dart';
import 'package:food_classification_using_camera_and_tflite/ui/screens/food_classifire_screen.dart';
import 'package:get/get.dart';

abstract class AppRoutes {
  static const classifier = '/classifier';
}
class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.classifier,
      page: () => const FoodClassifierScreen(),
      binding: ClassifierBinding(),
    ),
  ];
}
