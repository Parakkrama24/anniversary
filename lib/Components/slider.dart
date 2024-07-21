import 'package:flutter/material.dart';
import "package:carousel_slider/carousel_slider.dart";

class _Slider extends StatelessWidget {
  final List<String> imgList = [
    'assets/couple.jpg',
    'https://cdn.pixabay.com/photo/2024/06/28/18/52/ai-generated-8863845_960_720.jpg',
    'https://cdn.pixabay.com/photo/2024/06/30/19/43/ai-generated-8863847_960_720.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Slider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: imgList.map((item) => Container(
                child: Center(
                  child: Image.network(item, fit: BoxFit.cover, width: 1000)
                ),
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
