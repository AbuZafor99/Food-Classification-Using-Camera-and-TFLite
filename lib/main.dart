import 'package:flutter/material.dart';
import 'package:food_classification_using_camera_and_tflite/ui/controller_binder.dart';
import 'package:get/get.dart';
import 'myapp.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Classifier UI",
      initialRoute: AppRoutes.classifier,
      getPages: AppPages.pages,
      initialBinding: ClassifierBinding(),
      theme: ThemeData.light(),
    );
  }
}
