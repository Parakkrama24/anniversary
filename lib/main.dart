import 'package:anniversary/Screens/HomePage.dart';
import 'package:anniversary/Screens/Sliderpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HappyAnniversaryApp());
}

class HappyAnniversaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Anniversary',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}
