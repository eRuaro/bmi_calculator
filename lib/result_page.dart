import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi_calculator/input_data.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/bmi_calculator.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiResult, @required this.bmiInterpretation, @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(
              fontSize: kTitleTextSize,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Center(
                  child: Text(
                    'Your Result',
                    style: kTitleTextStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: InputData(
                color: kInactiveColorCard,
                onPress: () {},
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      bmiInterpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),

            //bottom button
            BottomButton(
              onTap: () {
                Navigator.pop(
                  context,
                );
              },
              buttonTitle: 'Re-Calculate',
            ),
          ],
        ),
      ),
    );
  }
}


