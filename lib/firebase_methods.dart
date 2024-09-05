import 'package:firebase_database/firebase_database.dart';
import 'package:physio_fit/sensor_reading.dart';

class FirebaseMethods {
  static const uid = "dkPwID4ojWhF9gt4DccVDuZcqg73";
  Future<SensorReading> getData(String uid) async {
    final DatabaseReference ref =
        FirebaseDatabase.instance.ref().child("/UsersData/$uid/readings");
    final DatabaseEvent event = await ref.once();
    final DataSnapshot snapshot = event.snapshot;
    return SensorReading.fromSnapshot(snapshot);
  }
}
