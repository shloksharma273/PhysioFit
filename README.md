
# PhysioFit

PhysioFit is an AI-enabled fitness tracker app that provides 100% personalized health improvement plans. It offers customized workout and diet plans based on user-specific data such as goals, BMI, fitness level, and dietary preferences. With seamless integration of a modular fitness band for movement tracking and real-time physiotherapy support, PhysioFit is designed to improve physical health and well-being.

## Features

- **AI-Powered Workout Plans**: Automatically generated workout routines tailored to the user’s fitness level, goals, and preferences.
- **AI Diet Planner**: Personalized diet plans based on user’s dietary preferences (vegetarian or non-vegetarian) and health objectives.
- **Modular Fitness Band**: Integrated with an ESP32-powered fitness band equipped with an MPU sensor to track body movements and assist in physiotherapy.
  - Tracks up to 8 body joints with sub-1 second latency for real-time feedback.
  - Data is uploaded to Firebase for real-time analysis and storage.
- **AI Trainer with Mediapipe**: Real-time movement tracking using Mediapipe, providing posture correction and ensuring 90% accuracy in maintaining proper form during exercises.
- **Physiotherapy Support**: Assists users in rehabilitating specific joints with guided exercises using sensor feedback.

## Technology Stack

- **Frontend**: Flutter
- **Backend**: Firebase (Real-time database, authentication, and cloud storage)
- **Hardware**: ESP32 with MPU sensor
- **AI Models**: Custom models for workout and diet planning
- **Posture Tracking**: Mediapipe for real-time movement tracking
- **Data Storage**: Firebase Firestore for user data and fitness logs

## Getting Started

Follow these steps to set up and run PhysioFit:

### Prerequisites

- **Flutter**: Install Flutter by following the guide [here](https://flutter.dev/docs/get-started/install).
- **Firebase**: Create a Firebase project for the app and set up the necessary services (Firestore, Authentication). Follow Firebase setup instructions [here](https://firebase.google.com/docs/flutter/setup).
- **ESP32 Development Board**: Set up the ESP32 fitness band with the necessary code and sensors. Ensure it can upload data to Firebase in real-time.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/shloksharma273/PhysioFit.git
   ```

2. Navigate to the project directory:
   ```bash
   cd PhysioFit
   ```

3. Install the required dependencies:
   ```bash
   flutter pub get
   ```

4. Set up Firebase:
   - Add Firebase to your Flutter project by following the instructions [here](https://firebase.google.com/docs/flutter/setup).
   - Add your `google-services.json` file to the `android/app` directory.

5. Run the app:
   ```bash
   flutter run
   ```

### ESP32 Fitness Band Setup

1. Flash the ESP32 with the provided code to enable real-time movement tracking and data uploads via Firebase.
2. Connect the MPU sensor to the ESP32 to track body joint movements.
3. Ensure that the Firebase project is configured correctly to receive data from the ESP32.

## Usage

- **Personalized Workout Plan**: After setting up your profile, the app generates workout routines tailored to your goals and fitness level.
- **Diet Planning**: Input your dietary preferences, and the app will create a custom meal plan.
- **Physiotherapy Mode**: Use the modular fitness band to receive real-time feedback during physiotherapy exercises.
- **AI Trainer**: Enable the AI trainer to track your form during exercises and receive posture correction tips.

## Contributing

Contributions are welcome! Here's how you can help:

1. Fork the repository.
2. Create a new feature branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add your feature"
   ```
4. Push to the branch:
   ```bash
   git push origin feature/your-feature-name
   ```
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, please contact:
- **Shlok M Sharma** - [shloksharma273@gmail.com](mailto:shloksharma273@gmail.com)
