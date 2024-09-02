import 'package:flutter/material.dart';
import 'book_one_page.dart'; // Import your book pages
import 'book_two_page.dart'; // Import BookTwoPage

class BooksPage extends StatelessWidget {
  final List<Map<String, String>> books = [
    {
      'title': 'Flutter for Beginners',
      'author': 'John Doe',
      'rating': '4.5 ★',
      'image': 'assets/book1.jpg', // Book image
      'category': 'Programming',
    },
    {
      'title': 'Mastering Dart',
      'author': 'Jane Smith',
      'rating': '4.8 ★',
      'image': 'assets/book2.jpg', // Book image
      'category': 'Programming',
    },
    // Add more books here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookOnePage()),
                );
              } else if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookTwoPage()),
                );
              }
              // Add more cases for additional books as needed
            },
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(books[index]['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            books[index]['title']!,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            books[index]['author']!,
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                books[index]['rating']!,
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.amber, size: 16),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text(
                            books[index]['category']!,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                Navigator.pushNamed(context, '/offers'); // Navigate to Offers Page
              },
              tooltip: 'Offers',
            ),
            IconButton(
              icon: Icon(Icons.book),
              onPressed: () {
                // Stay on Books Page
              },
              tooltip: 'Books',
            ),
          ],
        ),
      ),
    );
  }
}
