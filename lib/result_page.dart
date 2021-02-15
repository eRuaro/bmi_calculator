import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
                  color: Color(kBottomContainerColor),
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: kBottomContainerHeight,
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Go Back!!!',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
