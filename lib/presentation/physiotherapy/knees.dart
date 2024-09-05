import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:physio_fit/core/config/theme/app_colors.dart';
import 'package:physio_fit/core/config/theme/app_images.dart';
import 'package:physio_fit/sensor_reading.dart';

import '../../core/common_widgets/custom_appbar.dart';

class Knees extends StatefulWidget {
  const Knees({super.key});

  @override
  State<Knees> createState() => _KneesState();
}

class _KneesState extends State<Knees> {
  int reps = 0;
  bool isInRestPosition = true; // Add this as a member of the class
  static const uid = "dkPwID4ojWhF9gt4DccVDuZcqg73";
  final DatabaseReference _databaseRef = FirebaseDatabase.instance.ref();
  @override
  Widget build(BuildContext context) {
    DatabaseReference readingsRef =
    _databaseRef.child('UsersData/$uid/readings');
    return Scaffold(
      appBar: const CustomAppbar(title: "Knees Exercise"),
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
              if (double.parse(latestReading.angle) >= 90 && isInRestPosition) {
                reps++;
                isInRestPosition = false; // Mark as not in rest position
              } else if (double.parse(latestReading.angle) < 90) {
                isInRestPosition = true; // Reset when angle is below 90
              }
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Tie The Band on Your Thighs and Move Your Knees As Shown in the Image",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: AppColors.black, // Adjust text color as needed
                          fontFamily: "Poppins"),
                      textAlign: TextAlign.center, // Center text
                    ),

                    const SizedBox(
                      height: 40,
                    ),

                    const Image(image: AssetImage(AppImages.knees),),

                    const SizedBox(
                      height: 20,
                    ),

                    Text(
                      'Current Angle: ${latestReading.angle}',
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black, // Adjust text color as needed
                          fontFamily: "Poppins"),

                    ),

                    const SizedBox(
                      height: 20,
                    ),


                    Text(
                      'Reps $reps',
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black, // Adjust text color as needed
                          fontFamily: "Poppins"),

                    ),
                  ],
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
