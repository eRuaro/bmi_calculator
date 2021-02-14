import 'package:flutter/material.dart';
import 'input_data.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('BMI Calculator'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InputData(
                          color: Color(0xFF1D1E33),
                      ),
                    ),
                    Expanded(
                      child: InputData(
                        color: Color(0xFF1D1E33),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InputData(
                        color: Color(0xFF1D1E33),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InputData(
                        color: Color(0xFF1D1E33),
                      ),
                    ),
                    Expanded(
                      child: InputData(
                        color: Color(0xFF1D1E33),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),),
    );
  }
}


