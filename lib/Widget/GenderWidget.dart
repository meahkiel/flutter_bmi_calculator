
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Component.dart';
import 'package:my_bmi_calculator/store/constant.dart';



class GenderPage extends StatefulWidget {
  @override
  _GenderPageState createState() => _GenderPageState();

}

class _GenderPageState extends State<GenderPage> {

  Color maleCardColour = kInactiveCardColour;
  Color femaleCardColour = kActiveCardColour;

  void updateColour(int gender) {
    if(gender == 0) {
      maleCardColour = kActiveCardColour;
      femaleCardColour = kInactiveCardColour;
    }
    else {
      femaleCardColour = kActiveCardColour;
      maleCardColour = kInactiveCardColour;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: GestureDetector(
          onTap: () => setState(() => updateColour(0)),
          child: ReusableCard(
            colour: maleCardColour,
            child: SingleCard(
                iconData: FontAwesomeIcons.mars, label: 'Male'),
          ),
        ),
      ),
      Expanded(
        child: GestureDetector(
          onTap: () => setState(() => updateColour(1)) ,
          child: ReusableCard(
            colour: femaleCardColour,
            child: SingleCard(iconData: FontAwesomeIcons.venus, label: 'Female'),
          ),
        ),
      ),
    ]);
  }
}