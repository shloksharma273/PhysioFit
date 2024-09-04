import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:physio_fit/sensor_reading.dart';

class ElbowScreen extends StatefulWidget {
  const ElbowScreen({super.key});

  @override
  State<ElbowScreen> createState() => _ElbowScreenState();
}

class _ElbowScreenState extends State<ElbowScreen> {
  static const uid = "dkPwID4ojWhF9gt4DccVDuZcqg73";
  final DatabaseReference _databaseRef = FirebaseDatabase.instance.ref();
  @override
  Widget build(BuildContext context) {
    DatabaseReference readingsRef =
        _databaseRef.child('UsersData/$uid/readings');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensor Reading'),
      ),
      body: StreamBuilder<DatabaseEvent>(
        stream: readingsRef.orderByKey().limitToLast(1).onValue,
        builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.snapshot.value != null) {
              Map<dynamic, dynamic> values =
                  snapshot.data!.snapshot.value as Map<dynamic, dynamic>;
              String latestTimestampKey = values.keys.first;
              SensorReading latestReading = SensorReading.fromSnapshot(
                snapshot.data!.snapshot.child(latestTimestampKey),
              );
              print(latestReading.angle);
              return Center(
                child: Text(
                  'Angle: ${latestReading.angle}',
                  style: const TextStyle(fontSize: 20),
                ),
              );
            } else {
              return const Center(
                child: Text('No Data Available'),
              );
            }
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
