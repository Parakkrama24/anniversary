import 'package:anniversary/Screens/HomePage.dart';
import 'package:anniversary/Screens/Sliderpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HappyAnniversaryApp());
}

class HappyAnniversaryApp extends StatefulWidget {
  @override
  State<HappyAnniversaryApp> createState() => _HappyAnniversaryAppState();
}

class _HappyAnniversaryAppState extends State<HappyAnniversaryApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Happy Anniversary',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: HomePage(),
        routes: <String,WidgetBuilder>{
          "/home":(context)=>HappyAnniversaryApp(),
          "/Slider":(context)=>Sliderpage(),
        },
      ),
    );
  }
}
