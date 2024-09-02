import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final List<Map<String, String>> apps = [
    {'name': 'Angry Birds', 'icon': 'assets/angry-birds.png'},
    {'name': 'Asphalt 9', 'icon': 'assets/car.png'},
    {'name': 'Subway Surfers', 'icon': 'assets/train.png'},
    {'name': 'Facebook', 'icon': 'assets/facebook.png'},
    {'name': 'Instagram', 'icon': 'assets/instagram.png'},
    {'name': 'Snapchat', 'icon': 'assets/chat.png'},
    // Add more apps as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Apps'),
      ),
      body: SearchBar(apps: apps),
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
                Navigator.pushNamed(context, '/apps'); // Navigate to Apps Page
              },
              tooltip: 'Apps',
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Stay on Search Page
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

class SearchBar extends StatefulWidget {
  final List<Map<String, String>> apps;

  SearchBar({required this.apps});

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    final filteredApps = widget.apps
        .where((app) => app['name']!.toLowerCase().startsWith(query.toLowerCase()))
        .toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              setState(() {
                query = value;
              });
            },
            decoration: InputDecoration(
              hintText: 'Search for apps...',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredApps.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(
                  filteredApps[index]['icon']!,
                  width: 40,
                  height: 40,
                ),
                title: Text(filteredApps[index]['name']!),
                onTap: () {
                  // Implement navigation to the app detail page if needed
                  // For example: Navigator.pushNamed(context, '/app_detail', arguments: filteredApps[index]);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
