import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Special Offers'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Sample offers
              OfferCard(
                title: 'Get 50% off on Premium!',
                description: 'Limited time offer. Subscribe now to enjoy 50% off.',
                imageUrl: 'assets/images/offer1.jpg', // Replace with your image asset
              ),
              SizedBox(height: 16),
              OfferCard(
                title: 'Buy 1 Get 1 Free!',
                description: 'Purchase any app and get another one free!',
                imageUrl: 'assets/images/offer2.jpg', // Replace with your image asset
              ),
              SizedBox(height: 16),
              OfferCard(
                title: 'Free Trial for 30 Days!',
                description: 'Try any premium app free for 30 days.',
                imageUrl: 'assets/images/offer3.jpg', // Replace with your image asset
              ),
            ],
          ),
        ),
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
                Navigator.pushNamed(context, '/apps'); // Navigate to Apps Page
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
                // Stay on Offers Page
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

class OfferCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const OfferCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
