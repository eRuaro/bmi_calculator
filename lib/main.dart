import 'package:flutter/material.dart';
import 'input_page.dart';
import 'result_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/1st',
      routes: {
        '/1st': (context) => InputPage(),
        '/2nd': (context) => ResultPage(),
      },
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
