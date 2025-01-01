
# Flutter Starter Pack 🚀

A new Flutter project designed to provide a robust starting point for app development. This starter pack integrates essential dependencies and configurations to accelerate your Flutter development workflow.

---

## Table of Contents
1. [Features](#features)
2. [Dependencies](#dependencies)
3. [Setup Instructions](#setup-instructions)
4. [Project Structure](#project-structure)
5. [Usage](#usage)
6. [Additional Notes](#additional-notes)

---

## Features
- **Hive for local database management** 🗃️
- **Firebase Core and Database integration** 🔥
- **State management with Flutter Riverpod** 🌊
- **Custom icons with HugeIcons** 🎨
- **Linting tools for clean code practices** 🧹
- **Build runner for code generation** ⚙️
- **Material Design and Cupertino icons** 📱
- **Custom fonts with Poppins** ✨

---

## Dependencies
Below is the list of dependencies used in this project:

### Runtime Dependencies
| Package               | Version   | Description                                              |
|-----------------------|-----------|----------------------------------------------------------|
| `flutter`             | SDK       | Flutter SDK for cross-platform app development.          |
| `cupertino_icons`     | ^1.0.8    | iOS-style icons for Cupertino widgets.                   |
| `hive`                | ^2.2.3    | Lightweight and blazing-fast key-value database.         |
| `hive_flutter`        | ^1.1.0    | Hive integration with Flutter.                           |
| `hugeicons`           | ^0.0.7    | Customizable icons for unique app designs.               |
| `firebase_core`       | ^3.9.0    | Firebase Core SDK for initializing Firebase in Flutter.  |
| `firebase_database`   | ^11.2.0   | Real-time database integration with Firebase.            |
| `flutter_riverpod`    | ^2.6.1    | State management solution for Flutter apps.              |
| `riverpod_annotation` | ^2.6.1    | Annotations for Riverpod generators.                     |

### Development Dependencies
| Package                      | Version   | Description                                              |
|------------------------------|-----------|----------------------------------------------------------|
| `flutter_test`               | SDK       | Testing framework for Flutter apps.                     |
| `flutter_lints`              | ^5.0.0    | Linting rules for Flutter apps.                         |
| `hive_generator`             | ^2.0.1    | Code generator for Hive models.                         |
| `build_runner`               | ^2.4.14   | Code generator utility.                                 |
| `change_app_package_name`    | ^1.4.0    | Easily change app package name for Android builds.      |
| `riverpod_generator`         | ^2.6.3    | Code generator for Riverpod annotations.                |
| `custom_lint`                | ^0.7.0    | Create and run custom lint rules for Flutter projects.  |
| `riverpod_lint`              | ^2.6.3    | Lint rules specifically for Riverpod projects.          |

---

## Setup Instructions
Follow these steps to get started with the project:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-repository/starter_pack.git
   cd starter_pack
   ```

2. **Install dependencies:**
   Run the following command to install all required packages:
   ```bash
   flutter pub get
   ```

3. **Configure Firebase:**
   - Add your Firebase configuration files (`google-services.json` for Android, `GoogleService-Info.plist` for iOS).
   - Follow the [Firebase setup guide](https://firebase.google.com/docs/flutter/setup) for Flutter.

4. **Generate Hive adapters and Riverpod code:**
   ```bash
   flutter pub run build_runner build
   ```

5. **Run the application:**
   ```bash
   flutter run
   ```

---

## Project Structure
The project structure is designed to be clean and scalable:

```
starter_pack/
|   analysis_options.yaml
|   pubspec.yaml   
+---assets
|   +---icons
|   \---images
|           profile.jpeg
|           profile.jpg
|           
+---fonts
|       Poppins-Black.ttf
|       Poppins-BlackItalic.ttf
|       Poppins-Bold.ttf
|       Poppins-BoldItalic.ttf
|       Poppins-ExtraBold.ttf
|       Poppins-ExtraBoldItalic.ttf
|       Poppins-ExtraLight.ttf
|       Poppins-ExtraLightItalic.ttf
|       Poppins-Italic.ttf
|       Poppins-Light.ttf
|       Poppins-LightItalic.ttf
|       Poppins-Medium.ttf
|       Poppins-MediumItalic.ttf
|       Poppins-Regular.ttf
|       Poppins-SemiBold.ttf
|       Poppins-SemiBoldItalic.ttf
|       Poppins-Thin.ttf
|       Poppins-ThinItalic.ttf
|                  
+---lib
|   |   firebase_options.dart
|   |   main.dart
|   |   
|   +---components
|   |       appBarComponent.dart
|   |       drawerComponent.dart
|   |       
|   +---domains
|   |   +---models
|   |   |       articleModel.dart
|   |   |       
|   |   +---providers
|   |   |       articleProvider.dart
|   |   |       
|   |   +---repository
|   |   |       articleRepository.dart
|   |   |       
|   |   \---services
|   |           databaseService.dart
|   |           
|   \---screens
|           home.dart

```

---

## Usage

### Local Database with Hive
- **Setup Hive:** Use `hive_generator` to create adapters for your data models.
- **Example:**
  ```dart
  import 'package:hive/hive.dart';

  @HiveType(typeId: 0)
  class User {
    @HiveField(0)
    final String name;
    @HiveField(1)
    final int age;

    User(this.name, this.age);
  }
  ```

### Firebase Integration
- **Initialize Firebase in `main.dart`:**
  ```dart
  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(const MyApp());
  }
  ```

### State Management with Riverpod
- **Define a provider:**
  ```dart
  final counterProvider = StateProvider<int>((ref) => 0);
  ```
- **Consume the provider in widgets:**
  ```dart
  final counter = ref.watch(counterProvider);
  ```

---

## Additional Notes
- **Assets and Fonts:** Ensure your assets and fonts are correctly placed and referenced in `pubspec.yaml`.
- **Custom Icons:** Use `hugeicons` to add unique icons to your app.

Feel free to fork this project and adapt it to your specific needs. Contributions are welcome!

## [WARNING] 📌:  Don't forget to change package name
```bash
flutter pub run change_app_package_name:main com.package.appname
```
