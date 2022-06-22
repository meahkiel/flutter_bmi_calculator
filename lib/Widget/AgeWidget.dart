import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bmi_calculator/Widget/Component.dart';
import 'package:my_bmi_calculator/store/constant.dart';

class AgePage extends StatefulWidget {
  const AgePage({Key? key}) : super(key: key);

  @override
  State<AgePage> createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  int age = 10;

  onPressHandler(int toggle) {
    setState(() {
      if(toggle == 1 && age <= 100) {
        age++;
      }
      else if(toggle == 0 && age > 0) {
        age--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kActiveCardColour,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Age', style: kLabelTextStyle),
          SizedBox(
            height: 8.0,
          ),
          Text(age.toString(), style: kNumberStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundIconButton(
                onPressed: () => onPressHandler(1),
                iconData: FontAwesomeIcons.plus,
              ),
              SizedBox(
                width: 10.0,
              ),
              RoundIconButton(
                onPressed: () => onPressHandler(0),
                iconData: FontAwesomeIcons.minus,
              )
            ],
          ),
        ],
      ),
    );
  }
}
