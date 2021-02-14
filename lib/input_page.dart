import 'package:flutter/material.dart';
import 'input_data.dart';

const bottom_container_height = 70.0;
const color_card = 0xFF1D1E33;
const bottom_container_color = 0xFFEB1555;

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
                          color: Color(color_card),
                      ),
                    ),
                    Expanded(
                      child: InputData(
                        color: Color(color_card),
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
                        color: Color(color_card),
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
                        color: Color(color_card),
                      ),
                    ),
                    Expanded(
                      child: InputData(
                        color: Color(color_card),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(bottom_container_color),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: bottom_container_height,
              )
            ],
          ),),
    );
  }
}


