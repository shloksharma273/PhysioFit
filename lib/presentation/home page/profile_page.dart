import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  final String name; // Declare the name property

  const ProfileScreen({Key? key, required this.name}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.white,
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                          'assets/images/profile.png'), // Add your profile image path
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text('Lose a Fat Program',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Edit'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Stats Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatCard('180cm', 'Height'),
                _buildStatCard('65kg', 'Weight'),
                _buildStatCard('22yo', 'Age'),
              ],
            ),
            SizedBox(height: 20),

            // Account Section
            _buildSectionHeader('Account'),
            _buildAccountOption(context, Icons.person, 'Personal Data'),
            _buildAccountOption(context, Icons.star, 'Achievement'),
            _buildAccountOption(context, Icons.history, 'Activity History'),
            _buildAccountOption(
                context, Icons.fitness_center, 'Workout Progress'),

            // Notification Section
            _buildSectionHeader('Notification'),
            SwitchListTile(
              title: Text('Pop-up Notification'),
              value: true,
              onChanged: (val) {},
            ),

            // Other Section
            _buildSectionHeader('Other'),
            _buildAccountOption(context, Icons.contact_mail, 'Contact Us'),
            _buildAccountOption(context, Icons.policy, 'Privacy Policy'),
            _buildAccountOption(context, Icons.settings, 'Settings'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String value, String title) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(value,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(title, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildAccountOption(
      BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
