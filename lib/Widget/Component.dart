import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bmi_calculator/store/constant.dart';

class SingleCard extends StatelessWidget {
  SingleCard({Key? key, required this.iconData, required this.label})
      : super(key: key);

  final IconData iconData;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.child});

  final Color colour;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
      child: child,
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, this.iconData,this.onPressed}) : super(key: key);

  final IconData? iconData;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: 50.0,height: 50.0),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      child: Icon(iconData,color: Colors.white,),
    );
  }
}


class MatRoute {
  static final MatRoute _instance = MatRoute._internal();

  factory MatRoute() {
    return _instance;
  }

  MatRoute._internal();

  void navigate(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}