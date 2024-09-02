import 'package:flutter/material.dart';

class AppsPage extends StatelessWidget {
  final List<Map<String, String>> apps = [
    {
      'name': 'Angry Birds',
      'icon': 'assets/angry-birds.png',
      'rating': '4.5 ★',
      'downloads': '1M+',
      'category': 'Games',
    },
    {
      'name': 'Facebook',
      'icon': 'assets/facebook.png',
      'rating': '4.1 ★',
      'downloads': '10M+',
      'category': 'Social',
    },
    {
      'name': 'Instagram',
      'icon': 'assets/instagram.png',
      'rating': '4.7 ★',
      'downloads': '1B+',
      'category': 'Social',
    },
    {
      'name': 'Subway Surfers',
      'icon': 'assets/train.png',
      'rating': '4.5 ★',
      'downloads': '2B+',
      'category': 'Games',
    },
    {
      'name': 'Asphalt 9',
      'icon': 'assets/car.png',
      'rating': '4.6 ★',
      'downloads': '10M+',
      'category': 'Games',
    },
    // Add more apps as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apps'),
      ),
      body: ListView.builder(
        itemCount: apps.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: Image.asset(
                apps[index]['icon']!,
                width: 50,
                height: 50,
              ),
              title: Text(apps[index]['name']!),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Rating: ${apps[index]['rating']}'),
                  Text('Downloads: ${apps[index]['downloads']}'),
                  Text('Category: ${apps[index]['category']}'),
                ],
              ),
              onTap: () {
                // Implement navigation to the app detail page if needed
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.videogame_asset),
              onPressed: () {
                Navigator.pushNamed(context, '/games'); // Navigate to Games Page
              },
              tooltip: 'Games',
            ),
            IconButton(
              icon: Icon(Icons.apps),
              onPressed: () {
                // Stay on Apps Page
              },
              tooltip: 'Apps',
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.pushNamed(context, '/search'); // Navigate to Search Page
              },
              tooltip: 'Search',
            ),
            IconButton(
              icon: Icon(Icons.local_offer),
              onPressed: () {
                Navigator.pushNamed(context, '/offers'); // Navigate to Offers Page
              },
              tooltip: 'Offers',
            ),
            IconButton(
              icon: Icon(Icons.book),
              onPressed: () {
                Navigator.pushNamed(context, '/books'); // Navigate to Books Page
              },
              tooltip: 'Books',
            ),
          ],
        ),
      ),
    );
  }
}
