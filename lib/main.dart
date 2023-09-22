import 'package:flutter/material.dart';
import 'package:practicalexam/screens/detail_page.dart';
import 'package:practicalexam/screens/home_page.dart';
import 'package:practicalexam/screens/price_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'price_page': (context) => const PricePage(),
        'detial_page': (context) => const DetailPage(),
      },
    ),
  );
}
