import 'package:flutter/material.dart';

class AppTwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App One Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Icon
            Center(
              child: Image.asset(
                'assets/booking.png', // Replace with your app icon path
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(height: 16.0),
            
            // App Name
            Text(
              'App One',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            
            // App Rating, Size, and Downloads
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 20),
                SizedBox(width: 4.0),
                Text('4.5'), // Rating
                SizedBox(width: 16.0),
                Text('Size: 15 MB'), // Size
                SizedBox(width: 16.0),
                Text('Downloads: 1M+'), // Downloads
              ],
            ),
            SizedBox(height: 16.0),
            
            // Install Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle install action
                },
                child: Text('Install'),
              ),
            ),
            SizedBox(height: 16.0),
            
            // Screenshots
            Text(
              'Screenshots:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              height: 200, // Height for screenshot container
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset(
                    'assets/sc1.jpeg', // Replace with screenshot path
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8.0),
                  Image.asset(
                    'assets/sc2.jpeg', // Replace with screenshot path
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 8.0),
                  Image.asset(
                    'assets/sc3.jpeg', // Replace with screenshot path
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            
            // App Description
            Text(
              'Description:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'App One is a great app that allows users to do amazing things. It features a user-friendly interface and provides an excellent user experience. Download now to enjoy all its features!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
