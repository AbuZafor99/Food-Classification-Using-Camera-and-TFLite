# Food Classification Using Camera and TFLite (Ongoing)

This mobile application demonstrates food classification using the device's camera and TensorFlow Lite (TFLite). Built with **Flutter** and **GetX**, the app allows users to capture images using the camera or select them from the gallery. The integration of TensorFlow Lite for actual food classification is planned but is not yet implemented in this version.

---

## 🚀 Features (Completed)

* **Image Acquisition:** Users can pick images from the gallery or capture them using the camera.
* **Image Display:** The selected or captured image is displayed prominently on the screen.
* **User-Friendly Interface:** A clean and intuitive user interface built with Flutter.

---

## 📂 Project Architecture

The project follows a modular architecture with a clear separation of concerns:

* **Model (`lib/data/models`):** Contains data structures and business logic.

   * `image_model.dart`: A simple model to hold the `selectedImage` (an `Rx<File?>` for reactive updates).

* **View (`lib/ui/screens`):** Responsible for the user interface.

   * `food_classifire_screen.dart`: The main UI screen where users interact to pick/capture images and view them.

* **Controller (`lib/ui/controllers`):** Handles user input, updates the model, and interacts with the view.

   * `food_classifire_controller.dart`: Manages the logic for image picking using **image\_picker** and updates the **ImageModel**.

### State Management

State management is efficiently handled by the **GetX** framework.

* `GetxController`: Used in `FoodClassifierController` to manage the application's state and logic.
* `Obx`: Used in `FoodClassifierScreen` to reactively update the UI whenever the `selectedImage` in **ImageModel** changes.
* **Bindings:** `controller_binder.dart` uses GetX's `Bindings` to manage dependency injection, ensuring that controllers and models are properly initialized and available where needed.

---

## 📦 Technologies Used

* **Flutter:** The core framework for building the mobile app.
* **GetX:** State management, routing, and dependency injection solution for Flutter.
* **image\_picker:** A package to pick images from the gallery or capture them using the camera.

---

## 💻 How to Run the App

1. **Clone the repository:**

   ```bash
   git clone https://github.com/AbuZafor99/Food-Classification-Using-Camera-and-TFLite.git
   cd Food-Classification-Using-Camera-and-TFLite
   ```

2. **Install Flutter dependencies:**

   ```bash
   flutter pub get
   ```

3. **Run the app:**
   Connect a device or start an emulator, then run:

   ```bash
   flutter run
   ```

### Required Environment Setup

* **Flutter SDK:** Ensure you have the Flutter SDK installed and configured.
* **Android Studio / Xcode:** For mobile development, you'll need Android Studio (for Android) or Xcode (for iOS) installed to set up emulators/simulators and build the app.

---

## 📝 Upcoming Features (Coming Soon)

* **TensorFlow Lite Integration:** The ability to classify food items using a TensorFlow Lite model will be added soon. This will involve:

   * Loading a pre-trained TFLite model.
   * Processing the acquired image for model inference.
   * Running the image through the model to get classification predictions.
   * Displaying the classification results (e.g., food name, confidence score).
* **Backend Synchronization:** Synchronization of food classification results with a backend service will be implemented in the future.

---

## 📝 Code Walkthrough

### **main.dart:**

The entry point of the application. It initializes Flutter bindings and runs the `MyApp` widget, which sets up **GetX**-based routing and dependency injection.

### **myapp.dart:**

Contains the route definitions for the application. The `/classifier` route is associated with the **FoodClassifierScreen** and uses **ClassifierBinding** to inject dependencies.

### **lib/ui/controller\_binder.dart:**

Defines **ClassifierBinding**, which is responsible for injecting **FoodClassifierController** and **ImageModel** dependencies using GetX's dependency injection container.

### **lib/ui/controllers/food\_classifier\_controller.dart:**

The controller handles image picking and capturing. It uses **ImagePicker** to allow users to select images from the gallery or capture them with the camera. The selected image is updated in the **ImageModel**.

### **lib/ui/screens/food\_classifier\_screen.dart:**

The main screen of the app. It uses `Obx` to dynamically update the UI based on the selected image. Users can trigger image selection or capture via two buttons.

### **lib/data/models/image\_model.dart:**

This model stores the selected image in an observable `Rx<File?>`, allowing the UI to reactively update when the image changes.

---

## Known Issues or Future Enhancements

### **Known Issues**

* **Missing TFLite Integration:** The core food classification logic using a TFLite model is not yet implemented. The app currently only handles image acquisition and display.
* **No Classification Output:** Since TFLite integration is missing, there is no classification result displayed after an image is selected.

### **Future Enhancements**

* **TFLite Model Integration:** Implement the actual food classification using a TensorFlow Lite model. This will involve:

   * Adding the `tflite_flutter` dependency.
   * Including the TFLite model file in the project assets.
   * Developing the inference logic within `FoodClassifierController`.
* **Display Classification Results:** Show the predicted food category and confidence score on the UI.
* **Error Handling:** Implement robust error handling for image picking and TFLite inference.
* **User Feedback:** Provide visual feedback during image processing and classification.
* **More Features:**

   * Real-time classification from the camera feed.
   * History of classified items.
   * Information about classified food items (e.g., nutritional facts).

---


### Key Changes:

* The **project overview** clearly indicates that the app is a work in progress, with TFLite integration yet to be implemented.
* **Upcoming Features** section explicitly mentions the planned TFLite integration and backend synchronization.
* Known issues are highlighted, making it clear that TFLite functionality is missing.


