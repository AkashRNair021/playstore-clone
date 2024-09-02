import 'package:flutter/material.dart';
import 'for_you_page.dart';
import 'top_charts_page.dart';
import 'kids_page.dart';
import 'categories_page.dart';
import 'offers_page.dart'; // Make sure to import the OffersPage if you have it

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/game.png'), // Replace with your logo asset
          ),
          title: Text('App Name'),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.pushNamed(context, '/notifications');
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/angry-birds.png'), // Replace with your profile image asset
                ),
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'For You'),
              Tab(text: 'Top Charts'),
              Tab(text: 'Kids'),
              Tab(text: 'Categories'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ForYouPage(),
            TopChartPage(),
            KidsPage(),
            CategoriesPage(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.videogame_asset),
                onPressed: () {
                  // Navigate to Games Page (implement the navigation)
                  Navigator.pushNamed(context, '/games');
                },
                tooltip: 'Games',
              ),
              IconButton(
                icon: Icon(Icons.apps),
                onPressed: () {
                  // Navigate to Apps Page (implement the navigation)
                  Navigator.pushNamed(context, '/apps');
                },
                tooltip: 'Apps',
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Navigate to Search Page (implement the navigation)
                  Navigator.pushNamed(context, '/search');
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
                  // Navigate to Books Page (implement the navigation)
                  Navigator.pushNamed(context, '/books');
                },
                tooltip: 'Books',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
