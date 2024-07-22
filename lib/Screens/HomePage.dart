import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            // Background image
            Opacity(
              opacity: 0.3, // Adjust the alpha value here
              child: Image.asset(
                'assets/couple.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ),
            // Foreground content
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Text(
                    'Happy 4th Anniversary!',
                    style: GoogleFonts.abrilFatface(fontSize: 30)
                  ),
                  const SizedBox(height: 20),
                  Image.asset('assets/an.webp'), // Replace with your image URL
                  const SizedBox(height: 20),
                   Text(
                    'Wishing you a day filled with love and happiness.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sevillana(fontSize: 25,fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 25,),
                  FloatingActionButton(onPressed: (){
                      Navigator.of(context).pushNamed('/Slider');
                    
                  },
                  focusColor: Colors.black12,
                  backgroundColor: Colors.red,
                  child:const Icon(Icons.arrow_forward_ios,color: Color.fromARGB(255, 219, 220, 224)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
