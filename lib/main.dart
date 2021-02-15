import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_page.dart';
import 'package:bmi_calculator/bmi_calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      debugShowCheckedModeBanner: false,
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
