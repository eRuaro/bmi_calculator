import 'package:flutter/material.dart';

class InputData extends StatelessWidget {

  final Color color;
  final Widget cardChild;
  final Function onPress;

  InputData({@required this.color, this.cardChild,this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}
