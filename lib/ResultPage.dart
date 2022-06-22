import 'package:flutter/material.dart';
import 'package:my_bmi_calculator/input_page.dart';
import 'package:my_bmi_calculator/Widget/ButtonWidget.dart';
import 'package:my_bmi_calculator/store/constant.dart';

import 'Widget/Component.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {Key? key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation})
      : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: const Text(
                'Your Result',
                textAlign: TextAlign.center,
                style: kResultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kInactiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kLabelResultStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIResultStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kEvalResultStyle,
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: GestureDetector(
            child: ButtonWidget(
              onPress: () {
                MatRoute().navigate(context, InputPage());
              },
              buttonTitle: 'RE-CALCULATE',
            ),
          ))
        ],
      ),
    );
  }
}


