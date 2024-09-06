import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:physio_fit/presentation/home%20page/profile_page.dart';
import 'package:physio_fit/presentation/physiotherapy/physiotherapy.dart';

import '../../workout_tracker/fullbody_workout.dart';
import '../goalsetting/details.dart';
import 'activity_tracker.dart';

class HomeScreen extends StatefulWidget {
  @override
  final String name;
  const HomeScreen({Key? key, required this.name}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Function to handle bottom nav bar item taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigation based on index
    switch (index) {
      case 0:
        // Home Screen is the current screen
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ActivityTrackerScreen()),
        );
        break;
      case 2:
        // Add Button Action - can be implemented later
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Physiotherapy()),
        );
        break;
      case 4:
        // Navigate to Profile screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfileScreen()),
        );
        break;
    }
  }

  // Future<void> _openCamera() async {
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile? image = await _picker.pickImage(source: ImageSource.camera);
  //
  //   if (image == null) {
  //     print('No image selected.');
  //     return;
  //   }
  //
  //   print('Image path: ${image.path}');
  // }

  ////

  Future<void> _openCamera() async {
    // Check and request camera permissions
    PermissionStatus cameraStatus = await Permission.camera.request();

    if (cameraStatus.isGranted) {
      final ImagePicker _picker = ImagePicker();
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);

      if (image != null) {
        print('Image path: ${image.path}');
      } else {
        print('No image selected.');
      }
    } else if (cameraStatus.isDenied) {
      // You can show a dialog to request permission again
      print('Camera permission denied');
    } else if (cameraStatus.isPermanentlyDenied) {
      // Permissions are permanently denied, open settings
      openAppSettings();
    }
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline), label: 'Add'),
        BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center_rounded), label: 'Physio'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Profile'),
      ],
    );
  }

  ///

  ///

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row with welcome text and notification icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back,',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 16),

              // BMI Banner
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blueAccent.withOpacity(0.2),
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('BMI (Body Mass Index)',
                            style: TextStyle(fontSize: 18)),
                        SizedBox(height: 4),
                        Text('You have a normal weight',
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ),
                    // Placeholder for circular BMI indicator
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Text('20.1',
                              style: TextStyle(color: Colors.white))),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Today Target button
              ElevatedButton(
                onPressed: () {},
                child: Text('Today Target'),
              ),
              SizedBox(height: 16),

              // Activity Status (Heart Rate, Water, Sleep, Calories)
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        // Heart Rate
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Heart Rate',
                                    style: TextStyle(fontSize: 16)),
                                Text('78 BPM',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('3 mins ago',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        // Water Intake
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Water Intake',
                                    style: TextStyle(fontSize: 16)),
                                Text('4 Liters',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('Real-time updates',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        // Sleep
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Sleep', style: TextStyle(fontSize: 16)),
                                Text('8h 20m',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('Real-time updates',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        // Calories
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Calories',
                                    style: TextStyle(fontSize: 16)),
                                Text('760 kCal',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('230 kCal left',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Workout Progress
              Text('Workout Progress',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              // Placeholder for Workout Progress Image
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blueAccent.withOpacity(0.1),
                ),
                child: Center(
                  child: Text('Workout Progress Chart Placeholder'),
                ),
              ),
              SizedBox(height: 16),

              // Latest Workout
              Text('Latest Workout',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              // Example Latest Workouts
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkoutDetailsScreen()),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fullbody Workout',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '180 Calories Burn | 20 minutes',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lowerbody Workout'),
                            Text('200 Calories Burn | 25 minutes'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }
}
