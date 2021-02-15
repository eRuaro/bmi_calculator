import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_data.dart';
import 'container_content.dart';
import 'package:bmi_calculator/round_icon_button.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/bmi_calculator.dart';

enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // ignore: non_constant_identifier_names
  Color male_card_color = kInactiveColorCard;
  // ignore: non_constant_identifier_names
  Color female_card_color = kInactiveColorCard;

  // ignore: non_constant_identifier_names
  GenderType selected_gender;

  int height = 170;
  int weight = 60;
  int age = 20;

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
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InputData(
                      onPress: () {
                        setState(() {
                          selected_gender = GenderType.male;
                        });
                      },
                      color: selected_gender == GenderType.male
                          ? kColorCard
                          : kInactiveColorCard,
                      cardChild: ContainerContent(
                        icon: Icon(
                          FontAwesomeIcons.mars,
                          size: kIconSize,
                        ),
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: InputData(
                      onPress: () {
                        setState(() {
                          selected_gender = GenderType.female;
                        });
                      },
                      color: selected_gender == GenderType.female
                          ? kColorCard
                          : kInactiveColorCard,
                      cardChild: ContainerContent(
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          size: kIconSize,
                        ),
                        text: 'FEMALE',
                      ),
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
                      color: kInactiveColorCard,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: kLabelTextStyle,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                height.toString(),
                                style: kNumberTextStyle,
                              ),
                              Text(
                                ' cm',
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          SliderTheme(
                            //This is how you customize a Widget without affecting the app's theme data as a whole
                            data: SliderTheme.of(context).copyWith(
                                thumbColor: Color(0xFFEB1555),
                                overlayColor: Color(0xFFEB1555),
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15,
                                ),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 30,
                                )),
                            child: Slider(
                              value: height.toDouble(),
                              activeColor: Color(0xFFEB1555),
                              inactiveColor: Color(0xFF8D8E98),
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                              min: 120,
                              max: 220,
                            ),
                          ),
                        ],
                      ),
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
                      onPress: () {},
                      color: kInactiveColorCard,
                      cardChild: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: kLabelTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: kNumberTextStyle,
                                ),
                                Text(
                                  ' kg',
                                  style: kLabelTextStyle,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InputData(
                      color: kInactiveColorCard,
                      onPress: () {},
                      cardChild: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: kLabelTextStyle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  age.toString(),
                                  style: kNumberTextStyle,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Bottom Button
            BottomButton(
              onTap: () {
                //Create new instance of Functionality Class
                Calculator calc = Calculator(
                  height: height,
                  weight: weight,
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      //Functionality
                      bmiResult: calc.calculateBMI(),
                      bmiInterpretation: calc.getInterpretation(),
                      resultText: calc.getResult(),
                    ),
                  ),
                );
              },
              buttonTitle: 'Calculate',
            ),
          ],
        ),
      ),
    );
  }
}
