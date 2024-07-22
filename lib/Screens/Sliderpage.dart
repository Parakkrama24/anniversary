// ignore_for_file: sort_child_properties_last

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class Sliderpage extends StatefulWidget {
  const Sliderpage({super.key});

  @override
  State<Sliderpage> createState() => _SliderpageState();
}

class _SliderpageState extends State<Sliderpage> {
  final List<String> imgList = [
    'assets/01.jpeg',
    'assets/02.jpg',
    'assets/03.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Image Slider',
          style:
              GoogleFonts.sevillana(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft, // Starting point of the gradient
            end: Alignment.bottomRight, // Ending point of the gradient
            colors: [
              Color.fromARGB(255, 22, 4, 128),
              Color.fromARGB(232, 142, 140, 228)
            ], // Colors of the gradient
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                items: imgList
                    .map((item) => Container(
                          child: Center(
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  item,
                                  fit: BoxFit.cover,
                                  width: 1000,
                                ),
                              ),
                              color: Color.fromARGB(255, 0, 1, 2),
                              elevation: 5,
                              shadowColor: const Color.fromARGB(255, 2, 0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    15), // Rounded corners
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Hello worldhgjhgghgfhgdfhdgfhgdfhghgdfhgdf gfhdgfhdgfhdgf g gfhdgfhdgf!',textAlign: TextAlign.center,
                    textStyle: GoogleFonts.sevillana(fontSize: 40,fontWeight: FontWeight.w500),
                    speed: const Duration(milliseconds: 200),
                  ),
                ],
                totalRepeatCount: 5,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
