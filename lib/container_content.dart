import 'package:flutter/material.dart';
import 'constants.dart';

const double sizeBox_height = 15;

class ContainerContent extends StatelessWidget {

  ContainerContent({this.icon, this.text});

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(
          height: sizeBox_height,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
