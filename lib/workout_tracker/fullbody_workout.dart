import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:physio_fit/core/config/theme/app_images.dart';
import 'package:physio_fit/workout_tracker/workout_details_pushups.dart';

class WorkoutDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Implement action here
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff92A3FD),
                    Color(0xff9DCEFF),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.men, // Placeholder image path
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Fullbody Workout',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('11 Exercises | 32mins | 320 Calories Burn',
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Schedule workout logic
                        },
                        icon: Icon(Icons.calendar_today),
                        label: Text('Schedule Workout'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.withOpacity(0.2)),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Difficulty change logic
                        },
                        icon: Icon(Icons.swap_vert),
                        label: Text('Difficulty'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple.withOpacity(0.2)),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Exercises',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  // Set 1 Exercises
                  Text(
                    'Set 1',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    leading: Image.asset(
                        'assets/images/warmup.png'), // Placeholder image path
                    title: Text('Warm Up'),
                    subtitle: Text('05:00'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to exercise details
                    },
                  ),
                  ListTile(
                    leading: Image.asset(AppImages.jumpin),
                    title: Text('Jumping Jack'),
                    subtitle: Text('12x'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to exercise details
                    },
                  ),
                  ListTile(
                    leading: Image.asset(AppImages.skipping),
                    title: Text('Skipping'),
                    subtitle: Text('12x'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to exercise details
                    },
                  ),
                  ListTile(
                    leading: Image.asset(AppImages.squats),
                    title: Text('Squats'),
                    subtitle: Text('12x'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to exercise details
                    },
                  ),
                  // Additional exercises for Set 1...
                  SizedBox(height: 16),
                  // Set 2 Exercises
                  Text(
                    'Set 2',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    leading: Image.asset(AppImages.inclinepushup),
                    title: Text('Incline Push-Ups'),
                    subtitle: Text('12x'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to exercise details
                    },
                  ),
                  ListTile(
                    leading: Image.asset(AppImages.pushup), // Placeholder image
                    title: Text('Push-Ups'),
                    subtitle: Text('15x'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to the WorkoutDetailsScreen when the forward arrow icon is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WorkoutDetailsPushup(
                            videoUrl:
                                'https://www.youtube.com/watch?v=IODxDxX7oi4',
                          ), // Navigate to the WorkoutDetailsScreen
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Image.asset(AppImages.cobra),
                    title: Text('Cobra Stretch'),
                    subtitle: Text('12x'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to exercise details
                    },
                  ),
                  ListTile(
                    leading: Image.asset(AppImages.arm),
                    title: Text('Arm Raises'),
                    subtitle: Text('12x'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Navigate to exercise details
                    },
                  ),
                  // Additional exercises for Set 2...
                  SizedBox(height: 16),
                  // Start Workout Button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Start workout logic
                      },
                      child: Text('Start Workout'),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          backgroundColor: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
