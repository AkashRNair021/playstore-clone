import 'package:flutter/material.dart';
import 'app_one_page.dart'; // Import the new pages
import 'app_two_page.dart';
import 'app_three_page.dart';

class ForYouPage extends StatelessWidget {
  final List<Map<String, dynamic>> apps = [
    {
      'logo': 'assets/smartphone.png',
      'name': 'App One',
      'company': 'Company One',
      'rating': 4.5,
      'category': 'Category One',
      'page': AppOnePage(), // Add navigation reference
    },
    {
      'logo': 'assets/booking.png',
      'name': 'App Two',
      'company': 'Company Two',
      'rating': 4.7,
      'category': 'Category Two',
      'page': AppTwoPage(),
    },
    {
      'logo': 'assets/apps.png',
      'name': 'App Three',
      'company': 'Company Three',
      'rating': 4.3,
      'category': 'Category Three',
      'page': AppThreePage(),
    },
    {
      'logo': 'assets/booking.png',
      'name': 'App Four',
      'company': 'Company Four',
      'rating': 4.6,
      'category': 'Category Four',
    },
    {
      'logo': 'assets/chat.png',
      'name': 'App Five',
      'company': 'Company Five',
      'rating': 4.2,
      'category': 'Category Five',
    },
  ];

  final List<Map<String, dynamic>> appTiles = [
    {
      'logo': 'assets/car.png',
      'name': 'App One',
      'company': 'Company One',
      'rating': 4.5,
      'page': AppOnePage(), // Add navigation reference
    },
    {
      'logo': 'assets/chat.png',
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
      'logo': 'assets/train.png',
      'name': 'App Four',
      'company': 'Company Four',
      'rating': 4.6,
    },
    {
      'logo': 'assets/smartphone.png',
      'name': 'App Five',
      'company': 'Company Five',
      'rating': 4.2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Horizontally scrollable cards (First Set)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: apps.map((app) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => app['page']),
                        );
                      },
                      child: Container(
                        width: 400,
                        height: 200,
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 8.0,
                              left: 8.0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    app['logo'],
                                    height: 50.0,
                                    width: 50.0,
                                  ),
                                  SizedBox(width: 8.0),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        app['name'],
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(app['company']),
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Colors.yellow, size: 16.0),
                                          SizedBox(width: 4.0),
                                          Text('${app['rating']}'),
                                        ],
                                      ),
                                      Text(app['category']),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 16.0),
              // ListTile for apps (First Set)
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: appTiles.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => appTiles[index]['page']),
                      );
                    },
                    child: ListTile(
                      leading: Image.asset(
                        appTiles[index]['logo'],
                        height: 50.0,
                        width: 50.0,
                      ),
                      title: Text(appTiles[index]['name']),
                      subtitle: Row(
                        children: [
                          Text(appTiles[index]['company']),
                          SizedBox(width: 4.0),
                          Icon(Icons.star, color: Colors.yellow, size: 16.0),
                          SizedBox(width: 4.0),
                          Text('${appTiles[index]['rating']}'),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 16.0),

              // Horizontally scrollable cards (Second Set - Duplicates)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: apps.map((app) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => app['page']),
                        );
                      },
                      child: Container(
                        width: 400,
                        height: 200,
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 8.0,
                              left: 8.0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    app['logo'],
                                    height: 50.0,
                                    width: 50.0,
                                  ),
                                  SizedBox(width: 8.0),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        app['name'],
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(app['company']),
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Colors.yellow, size: 16.0),
                                          SizedBox(width: 4.0),
                                          Text('${app['rating']}'),
                                        ],
                                      ),
                                      Text(app['category']),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 16.0),

              // ListTile for apps (Second Set - Duplicates)
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: appTiles.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => appTiles[index]['page']),
                      );
                    },
                    child: ListTile(
                      leading: Image.asset(
                        appTiles[index]['logo'],
                        height: 50.0,
                        width: 50.0,
                      ),
                      title: Text(appTiles[index]['name']),
                      subtitle: Row(
                        children: [
                          Text(appTiles[index]['company']),
                          SizedBox(width: 4.0),
                          Icon(Icons.star, color: Colors.yellow, size: 16.0),
                          SizedBox(width: 4.0),
                          Text('${appTiles[index]['rating']}'),
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
