import 'package:flutter/material.dart';
import 'app_one_page.dart'; // Ensure these imports match your actual file structure
import 'app_two_page.dart';
import 'app_three_page.dart';

class TopChartPage extends StatelessWidget {
  final List<Map<String, dynamic>> apps = [
    {
      'logo': 'assets/apps.png',
      'name': 'App One',
      'company': 'Company One',
      'rating': 4.5,
      'page': AppOnePage(),
    },
    {
      'logo': 'assets/car.png',
      'name': 'App Two',
      'company': 'Company Two',
      'rating': 4.7,
      'page': AppTwoPage(),
    },
    {
      'logo': 'assets/booking.png',
      'name': 'App Three',
      'company': 'Company Three',
      'rating': 4.3,
      'page': AppThreePage(),
    },
    {
      'logo': 'assets/chat.png',
      'name': 'App Four',
      'company': 'Company Four',
      'rating': 4.6,
      'page': AppOnePage(), // Using the same pages for example
    },
    {
      'logo': 'assets/instagram.png',
      'name': 'App Five',
      'company': 'Company Five',
      'rating': 4.2,
      'page': AppTwoPage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> extendedApps = [];

    // Repeat the apps list until it contains 10 items
    for (int i = 0; i < 10; i++) {
      extendedApps.add(apps[i % apps.length]); // Repeat using modulus
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Top Charts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: extendedApps.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => extendedApps[index]['page']),
                );
              },
              child: ListTile(
                leading: Image.asset(
                  extendedApps[index]['logo'],
                  height: 50.0,
                  width: 50.0,
                ),
                title: Text(extendedApps[index]['name']),
                subtitle: Row(
                  children: [
                    Text(extendedApps[index]['company']),
                    SizedBox(width: 4.0),
                    Icon(Icons.star, color: Colors.yellow, size: 16.0),
                    SizedBox(width: 4.0),
                    Text('${extendedApps[index]['rating']}'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
