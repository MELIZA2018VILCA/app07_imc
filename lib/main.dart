import 'package:app07_imc/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC App',
      theme: ThemeData(
        sliderTheme: SliderThemeData(
          activeTrackColor: Color(0xffff006e).withOpacity(0.80),
          inactiveTickMarkColor: Colors.black.withOpacity(0.85),
          thumbColor: Color(0xffff006e).withOpacity(0.80),
          overlayColor: Color(0xffff006e).withOpacity(0.80),
          
          trackHeight: 8.0,
        ),
      ),
      home: homePage(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
