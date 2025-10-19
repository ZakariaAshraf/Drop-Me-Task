# Drop Me Task

A Flutter application for Drop Me internship task that demonstrates QR code scanning functionality for RVM (Reverse Vending Machine) deposit confirmation.

## 📱 Application Overview

This Flutter app simulates a deposit confirmation system for Reverse Vending Machines (RVM). The application features:

- **Home Screen**: Simple interface with a QR code scan button
- **QR Scan View**: Camera-enabled screen for deposit confirmation
- **RVM Integration**: Simulates the process of confirming deposits at specific locations

## 🚀 Features

- **QR Code Scanning**: Camera integration for scanning QR codes
- **Deposit Confirmation**: User-friendly interface to confirm or cancel deposits
- **Location-based**: Shows specific RVM location (10th of Ramadan)
- **Modern UI**: Clean, intuitive design with Material Design components

## 🛠️ Setup Instructions

### Prerequisites

- Flutter SDK (version 3.8.1 or higher)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- Android device or emulator for testing

### Installation Steps

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd drop_me_task
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Platform-specific Setup

#### Android
- Ensure Android SDK is installed
- Enable developer options and USB debugging on your device
- Or use an Android emulator

#### iOS (if targeting iOS)
- Ensure Xcode is installed
- Run `flutter doctor` to verify iOS setup

## 📁 Project Structure

```
lib/
├── main.dart                           # App entry point
├── features/
│   ├── home/
│   │   └── screens/
│   │       └── home_screen.dart       # Main home screen
│   └── qr_scan/
│       ├── screens/
│       │   └── qr_scan_view.dart      # QR scanning interface
│       └── widgets/
│           └── primary_button.dart    # Reusable button component
```

## 🔧 Dependencies

- **flutter**: Flutter SDK
- **camera**: ^0.11.2 - For camera functionality and QR scanning
- **cupertino_icons**: ^1.0.8 - iOS-style icons

## 📱 How to Use

1. Launch the app
2. Tap the QR code scan button on the home screen
3. The camera will initialize for QR scanning
4. Confirm or cancel your deposit at the RVM location

## 🎯 What Makes This App Special

- **Clean Architecture**: Well-organized feature-based structure
- **Camera Integration**: Seamless camera access for QR scanning
- **User Experience**: Intuitive flow from scanning to confirmation
- **RVM Simulation**: Realistic deposit confirmation process
- **Responsive Design**: Works across different screen sizes

## 🚀 Getting Started

1. Make sure Flutter is properly installed and configured
2. Run `flutter doctor` to check for any issues
3. Connect your device or start an emulator
4. Run `flutter run` to launch the app

## 📝 Development Notes

- The app uses Material Design for consistent UI
- Camera permissions are required for QR scanning functionality
- The app is configured for Android and iOS platforms
- Debug banner is disabled for cleaner UI

## 🤝 Contributing

This is an internship task project. For any improvements or suggestions, please follow the standard Flutter development practices.

---

**Built with Flutter** ❤️
