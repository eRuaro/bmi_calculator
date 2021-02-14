import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InputPage(),
        theme: ThemeData(
          //App Bar Theme, Color Palette
          primaryColor: Color(0xFF252849),
          //Foreground color for Widgets Theme
          accentColor: Colors.teal,
          scaffoldBackgroundColor: Color(0xFF252849),
        ));
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Body Text Centered',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: null,
      ),
    );
  }
}
