import 'package:flutter/material.dart';
import 'package:my_bmi_calculator/BMICalc.dart';
import 'package:my_bmi_calculator/Widget/AgeWidget.dart';
import 'package:my_bmi_calculator/Widget/GenderWidget.dart';
import 'package:my_bmi_calculator/Widget/bmi_slider_widget.dart';
import 'package:my_bmi_calculator/Widget/bmi_weight_widget.dart';
import 'ResultPage.dart';
import 'Widget/ButtonWidget.dart';
import 'Widget/Component.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  final BMICalc calc = BMICalc(height: 180, weight: 9, gender: 0, age: 10);


  slideChangeHandler(double newValue) {
    setState(() {
      calc.setHeigh(newValue.toInt());
    });
  }

  onWeightPressHandler(int toggle) {
    setState(() {
      if (toggle == 1) {
        calc.increaseWeight(1);
      } else {
        calc.decreaseWeight(1);
      }
    });
  }

  onButtonCalculateHandler() {

    calc.calculate();
    MatRoute().navigate(context, ResultPage(
        bmiResult: calc.getBMIValue(),
        resultText: calc.getResult(),
        interpretation: calc.getInterpretation()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('BMI Calculator 2')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: GenderPage()),
            Expanded(
                child: BMISliderWidget(
              onSliderChange: slideChangeHandler,
              height: calc.getHeight(),
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: BMIWeightWidget(
                    onPress: onWeightPressHandler,
                    weight: calc.getWeight(),
                  )),
                  Expanded(child: AgePage()),
                ],
              ),
            ),
            ButtonWidget(
              onPress: onButtonCalculateHandler,
              buttonTitle: 'CALCULATE',
            )
          ],
        ));
  }
}
