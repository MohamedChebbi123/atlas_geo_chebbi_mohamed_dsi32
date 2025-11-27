# Atlas Géographique - Atlas Geo Chebbi Mohamed

A Flutter application that allows users to explore geographical information about different countries around the world.

## 📱 Project Features

- **Welcome Screen**: An attractive landing page with a globe image and call-to-action button
- **Country List**: Browse through a comprehensive list of countries with their flags
- **Detailed Country Information**: View detailed information for each country including:
  - Country flag
  - Capital city
  - Population
  - Surface area
  - Official language
- **Search Functionality**: Search for countries by name
- **Navigation Drawer**: Easy navigation menu with:
  - Home page access
  - About page with project information
  - Exit application option
- **Responsive UI**: Clean and modern Material Design interface
- **Multi-platform Support**: Works on Android, iOS, Web, Windows, macOS, and Linux

## 🌍 Countries Included

The app currently includes information about:
- France
- Tunisia
- Brazil
- Italy
- Canada
- Australia
- Germany
- Spain
- South Africa

## 🚀 How to Run the Project

### Prerequisites

Before running this project, make sure you have the following installed:

1. **Flutter SDK** (version 3.9.0 or higher)
   - Download from: https://flutter.dev/docs/get-started/install
   - Verify installation: `flutter --version`

2. **Dart SDK** (comes with Flutter)

3. **Android Studio** or **VS Code** with Flutter extensions

4. **Device/Emulator**:
   - Android device/emulator (for Android)
   - iOS simulator (for iOS - Mac only)
   - Chrome browser (for Web)
   - Windows/macOS/Linux machine (for desktop)

### Installation Steps


1. **Install dependencies**
   ```bash
   flutter pub get
   ```

2. **Check for any issues**
   ```bash
   flutter doctor
   ```
   Resolve any issues shown by `flutter doctor` before proceeding.

3. **Connect a device or start an emulator**
   - For Android: Start an Android emulator or connect a physical device
   - For iOS: Start iOS simulator (Mac only)
   - For Web: No device needed
   - For Desktop: Run on your current machine

4. **Run the application**

   For Android/iOS:
   ```bash
   flutter run
   ```

   For Web:
   ```bash
   flutter run -d chrome
   ```

   For Windows:
   ```bash
   flutter run -d windows
   ```

   For macOS:
   ```bash
   flutter run -d macos
   ```

   For Linux:
   ```bash
   flutter run -d linux
   ```

5. **Select target device** (if multiple devices are available)
   ```bash
   flutter devices
   flutter run -d <device-id>
   ```

### Alternative: Run from IDE

**Using VS Code:**
1. Open the project folder in VS Code
2. Press `F5` or click "Run > Start Debugging"
3. Select the target device from the bottom status bar

**Using Android Studio:**
1. Open the project in Android Studio
2. Select target device from the device dropdown
3. Click the green "Run" button or press `Shift + F10`

## 📁 Project Structure

```
lib/
├── main.dart                      # Entry point of the application
├── models/
│   └── Pays.dart                  # Country data model
├── pages/
│   ├── page_acceuil.dart         # Welcome/Home screen
│   ├── page_principale.dart      # Main screen with country list
│   └── page_detail_pays.dart     # Country detail page
└── assets/
    └── [country flags and images] # Image assets
```

## 🛠️ Technologies Used

- **Flutter**: UI framework for building natively compiled applications
- **Dart**: Programming language
- **Material Design**: Google's design system for UI components

## 📦 Dependencies

- `flutter`: SDK for building the app
- `cupertino_icons`: iOS-style icons (version ^1.0.8)

## 🔧 Build for Production

### Android APK
```bash
flutter build apk --release
```

### Android App Bundle
```bash
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```

### Windows
```bash
flutter build windows --release
```

## 🐛 Troubleshooting

**Issue: Dependencies not found**
```bash
flutter clean
flutter pub get
```

**Issue: Build fails**
```bash
flutter clean
flutter pub cache repair
flutter pub get
```

**Issue: Assets not loading**
- Make sure all image files exist in `lib/assets/` directory
- Check that image paths in code match actual file locations

## 👨‍💻 Developer

Created by Mohamed Chebbi

## 📄 License

This is a private project. Not published to pub.dev.

## 📞 Support

For any questions or issues, please refer to the [Flutter documentation](https://docs.flutter.dev/).


