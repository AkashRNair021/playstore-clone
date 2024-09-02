import 'package:flutter/material.dart';
import 'app_one_page.dart'; // Import your app detail pages
import 'app_two_page.dart';
import 'app_three_page.dart';

class KidsPage extends StatelessWidget {
  final List<Map<String, dynamic>> apps = [
    {
      'logo': 'assets/facebook.png',
      'name': 'App One',
      'company': 'Company One',
      'rating': 4.5,
      'page': AppOnePage(),
    },
    {
      'logo': 'assets/game.png',
      'name': 'App Two',
      'company': 'Company Two',
      'rating': 4.7,
      'page': AppTwoPage(),
    },
    {
      'logo': 'assets/instagram.png',
      'name': 'App Three',
      'company': 'Company Three',
      'rating': 4.3,
      'page': AppThreePage(),
    },
    {
      'logo': 'assets/smartphone.png',
      'name': 'App Four',
      'company': 'Company Four',
      'rating': 4.6,
      'page': AppOnePage(), // Repeat for demonstration
    },
    {
      'logo': 'assets/train.png',
      'name': 'App Five',
      'company': 'Company Five',
      'rating': 4.2,
      'page': AppTwoPage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kids Apps'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Horizontal Scrollable Cards
              Container(
                height: 200, // Height for the card container
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: apps.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 400, // Width for each card
                      margin: EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            apps[index]['logo'],
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            apps[index]['name'],
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(apps[index]['company']),
                              SizedBox(width: 4.0),
                              Icon(Icons.star, color: Colors.yellow, size: 16.0),
                              SizedBox(width: 4.0),
                              Text('${apps[index]['rating']}'),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16.0),

              // List Tiles
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: apps.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => apps[index]['page']),
                      );
                    },
                    child: ListTile(
                      leading: Image.asset(
                        apps[index]['logo'],
                        height: 50.0,
                        width: 50.0,
                      ),
                      title: Text(apps[index]['name']),
                      subtitle: Row(
                        children: [
                          Text(apps[index]['company']),
                          SizedBox(width: 4.0),
                          Icon(Icons.star, color: Colors.yellow, size: 16.0),
                          SizedBox(width: 4.0),
                          Text('${apps[index]['rating']}'),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 16.0),
              
              // Duplicate the above ListView to show the same apps again
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: apps.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => apps[index]['page']),
                      );
                    },
                    child: ListTile(
                      leading: Image.asset(
                        apps[index]['logo'],
                        height: 50.0,
                        width: 50.0,
                      ),
                      title: Text(apps[index]['name']),
                      subtitle: Row(
                        children: [
                          Text(apps[index]['company']),
                          SizedBox(width: 4.0),
                          Icon(Icons.star, color: Colors.yellow, size: 16.0),
                          SizedBox(width: 4.0),
                          Text('${apps[index]['rating']}'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
