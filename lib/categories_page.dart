import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'name': 'Action', 'icon': Icons.security},
    {'name': 'Adventure', 'icon': Icons.explore},
    {'name': 'Arcade', 'icon': Icons.games},
    {'name': 'Puzzle', 'icon': Icons.pages},
    {'name': 'Strategy', 'icon': Icons.build},
    {'name': 'Racing', 'icon': Icons.directions_car},
    {'name': 'Sports', 'icon': Icons.sports},
    {'name': 'Simulation', 'icon': Icons.safety_check},
    {'name': 'Education', 'icon': Icons.school},
    {'name': 'Music', 'icon': Icons.music_note},
    {'name': 'Role Playing', 'icon': Icons.person},
    {'name': 'Board Games', 'icon': Icons.bookmark_add_rounded},
    {'name': 'Trivia', 'icon': Icons.question_answer},
    {'name': 'Casual', 'icon': Icons.casino},
    {'name': 'Card', 'icon': Icons.credit_card},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Implement navigation to the respective category page
                // Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryDetailPage()));
              },
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  leading: Icon(categories[index]['icon'], size: 40.0),
                  title: Text(categories[index]['name'], style: TextStyle(fontSize: 18)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
