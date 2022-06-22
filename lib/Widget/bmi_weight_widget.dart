import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bmi_calculator/store/constant.dart';
import 'Component.dart';


class BMIWeightWidget extends StatelessWidget {
  const BMIWeightWidget({Key? key,required this.onPress,required this.weight}) : super(key: key);

  final Function onPress;
  final int weight;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kActiveCardColour,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Weight', style: kLabelTextStyle),
          SizedBox(
            height: 8.0,
          ),
          Text(weight.toString(), style: kNumberStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundIconButton(
                onPressed: () => onPress(1),
                iconData: FontAwesomeIcons.plus,
              ),
              SizedBox(width: 10.0,),
              RoundIconButton(
                onPressed: () => onPress(0),
                iconData: FontAwesomeIcons.minus,
              )
            ],
          )
        ],
      ),
    );;
  }
}


