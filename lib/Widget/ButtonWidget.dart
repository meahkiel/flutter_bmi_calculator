import 'package:flutter/material.dart';
import 'package:my_bmi_calculator/store/constant.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.buttonTitle, this.onPress})
      : super(key: key);

  final VoidCallback? onPress;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            buttonTitle,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
