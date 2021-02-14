import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF252849),
        //Foreground color for Widgets Theme
        scaffoldBackgroundColor: Color(0xFF252849),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 24,
          ),
        ),

      ),
    );
  }
}


