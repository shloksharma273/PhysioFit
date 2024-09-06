import 'package:flutter/material.dart';
import 'package:physio_fit/presentation/onboarding/finish.dart';
import 'package:url_launcher/url_launcher.dart'; // For opening the video link

class WorkoutDetailsPushup extends StatelessWidget {
  final String videoUrl; // Pass the video URL to this screen

  WorkoutDetailsPushup({required this.videoUrl});

  // Function to open the video link
  void _launchVideo() async {
    if (await canLaunch(videoUrl)) {
      await launch(videoUrl);
    } else {
      throw 'Could not launch $videoUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top image that acts as a video hyperlink
              GestureDetector(
                onTap: _launchVideo, // Open video link when clicked
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://static.vecteezy.com/system/resources/previews/000/162/135/non_2x/push-up-pose-vector.jpg'), // Replace with a thumbnail URL or local asset
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.play_circle_outline,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Jumping Jack',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Easy | 390 Calories Burn',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Descriptions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Push-ups are a bodyweight exercise that primarily targets the chest, shoulders, and triceps.',
                style: TextStyle(fontSize: 14),
              ),
              // GestureDetector(
              //   onTap: () {
              //     // Add functionality for Read More if needed
              //   },
              //   child: Text(
              //     'Read More...',
              //     style: TextStyle(
              //       color: Colors.blue,
              //       fontSize: 14,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              SizedBox(height: 16),
              Text(
                'How To Do It',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              // List of steps
              _buildStep('01', 'Starting Position',
                  'Place your hands shoulder-width apart, extend your legs behind you on the balls of your feet, and keep your body in a straight line from head to heels.'),
              _buildStep('02', 'Lowering Phase',
                  'Bend your elbows to lower your chest towards the floor, keeping them at a 45-degree angle to your torso, while maintaining a straight body line without sagging or arching.'),
              _buildStep('03', 'Pushing Up',
                  'Extend your elbows to push your body back up to the starting position, keeping your core engaged throughout.'),
              _buildStep('04', 'Breathing',
                  'Inhale as you lower yourself and exhale as you push back up.'),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FinishPage()),
                  );},
                  child: Text('Save'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build each step widget
  Widget _buildStep(String step, String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.purple,
              child: Text(
                step,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, top: 4, bottom: 16),
          child: Text(
            description,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
