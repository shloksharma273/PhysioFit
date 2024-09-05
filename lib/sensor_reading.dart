import 'package:firebase_database/firebase_database.dart';

class SensorReading {
  final String angle;

  SensorReading({
    required this.angle,
  });

  factory SensorReading.fromSnapshot(DataSnapshot snapshot) {
    // Extract the value from the snapshot
    final String angle =
        (snapshot.value as Map<dynamic, dynamic>)['angle'] ?? "0.0";
    return SensorReading(
      angle: angle,
    );
  }
}
