import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityTrackerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Tracker'),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Today's Target
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blueAccent.withOpacity(0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Today Target', style: TextStyle(fontSize: 18)),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.local_drink, color: Colors.blueAccent),
                              SizedBox(height: 4),
                              Text('8L', style: TextStyle(fontSize: 16)),
                              Text('Water Intake',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey)),
                            ],
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.directions_walk,
                                  color: Colors.orangeAccent),
                              SizedBox(height: 4),
                              Text('2400', style: TextStyle(fontSize: 16)),
                              Text('Foot Steps',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(), padding: EdgeInsets.all(12)),
                  )
                ],
              ),
            ),
            SizedBox(height: 16),

            // Activity Progress
            Text('Activity Progress',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Container(
              height: 120, // Placeholder height
              color: Colors.grey[200], // Placeholder for progress chart
              child: Center(child: Text('Progress Chart Placeholder')),
            ),
            SizedBox(height: 16),

            // Latest Activity
            Text('Latest Activity',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Drinking 300ml Water'),
              subtitle: Text('About 3 minutes ago'),
              trailing: Icon(Icons.more_vert),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
              title: Text('Eat Snack (Fitbar)'),
              subtitle: Text('About 10 minutes ago'),
              trailing: Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
