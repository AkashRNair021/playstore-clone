import 'package:appstore/apps_page.dart';
import 'package:appstore/book_one_page.dart';
import 'package:appstore/book_two_page.dart';
import 'package:appstore/books_page.dart';
import 'package:appstore/offers_page.dart';
import 'package:appstore/search_page.dart';
import 'package:flutter/material.dart';
import 'main_page.dart';
import 'notification_page.dart';
import 'profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: {
        '/notifications': (context) => NotificationPage(),
        '/profile': (context) => ProfilePage(),
        '/search':(context) => SearchPage(),
        '/offers': (context) => OffersPage(),
        '/books':(context) => BooksPage(),
        '/book_one': (context) => BookOnePage(), // Add route for Book One
        '/book_two': (context) => BookTwoPage(),
        '/apps': (context) => AppsPage()
      },
    );
  }
}
