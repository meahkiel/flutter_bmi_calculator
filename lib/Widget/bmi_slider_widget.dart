import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_bmi_calculator/store/constant.dart';
import '../Widget/Component.dart';


class BMISliderWidget extends StatelessWidget {
  const BMISliderWidget({Key? key,required this.height,required this.onSliderChange}) : super(key: key);

  final Function onSliderChange;
  final int height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: ReusableCard(
            colour: kActiveCardColour,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Height', style: kLabelTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(), style: kNumberStyle),
                    Text('cm', style: kLabelTextStyle)
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  min: 0.0,
                  max: 220.0,
                  activeColor: Color(0xffeb1555),
                  onChanged: (double newValue) => onSliderChange(newValue),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}


