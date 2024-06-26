# EcoBin - Mobile App Developed on Flutters

This is a Flutter-based mobile application developed in Dart. This guide will help you set up and run the application on an Android Emulator using Android Studio.

## Prerequisites

Before you begin, ensure you have the following installed on your development machine:

1. [Flutter SDK](https://flutter.dev/docs/get-started/install)
2. [Dart SDK](https://dart.dev/get-dart)
3. [Android Studio](https://developer.android.com/studio)
4. [Android Emulator](https://developer.android.com/studio/run/emulator)

## Setup Instructions

### Step 1: Install Flutter and Dart

If you haven't already, install the Flutter SDK by following the instructions on the [Flutter official website](https://flutter.dev/docs/get-started/install).

### Step 2: Set Up Android Studio

1. Download and install [Android Studio](https://developer.android.com/studio).
2. Open Android Studio and go through the initial setup process.
3. Ensure you have the necessary Flutter and Dart plugins installed:
   - Go to `File` > `Settings` > `Plugins`.
   - Search for and install the `Flutter` and `Dart` plugins.
4. Restart Android Studio after installing the plugins.

### Step 3: Set Up the Android Emulator

1. Open Android Studio.
2. Go to `Tools` > `AVD Manager`.
3. Click on `Create Virtual Device`.
4. Choose `Pixel 7` from the list of devices.
5. Select a system image (preferably one with Google APIs).
6. Click `Next` and adjust any necessary settings.
7. Click `Finish` to create the virtual device.

### Step 4: Clone the Repository

Clone your application's repository to your local machine. Open a terminal and run the following command:

```bash
git clone https://github.com/code2solving/EcoBin
```

### Step 5: Open the Project in Android Studio
1. Open Android Studio.
2. Select **Open an existing project**.
3. Navigate to the cloned repository and select the project folder.
4. Let Android Studio load the project and resolve dependencies.

### Step 6: Run the Application
1. Ensure the Pixel 7 virtual device is running. You can start it from **Tools > AVD Manager**.
2. Open a terminal in Android Studio.
3. Run the following command to ensure Flutter is properly set up:

    ```bash
    flutter doctor
    ```

4. Resolve any issues highlighted by the `flutter doctor` command.
5. Run the application using the following command:

    ```bash
    flutter run
    ```

6. Alternatively, you can run the application directly from Android Studio:
    - Select the Pixel 7 emulator from the device dropdown.
    - Click the **Run** button (green play button) in the toolbar.

### Troubleshooting
- **Emulator Not Starting**: Ensure your system meets the requirements for running the Android Emulator. Check the Android Studio logs for any error messages.
- **Dependencies Not Resolving**: Run `flutter pub get` to fetch all dependencies. Ensure your internet connection is stable.
- **Application Crashing**: Check the Flutter and Dart plugin versions. Ensure they are up-to-date. Review the application logs for specific error messages.

### Contributing
Contributions are welcome! Please fork this repository and submit a pull request with your changes.

### License
This project is licensed under the MIT License. See the LICENSE file for details.

### Contact
For any questions or feedback, please contact [s.kassymzhomart@gmail.com].

Happy Coding!
