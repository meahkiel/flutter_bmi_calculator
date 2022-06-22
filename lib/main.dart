import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const MyBMICalculator());
}

class MyBMICalculator extends StatelessWidget {
  const MyBMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const AppBarTheme appBarTheme =
        AppBarTheme(backgroundColor: Color(0xff0a0e21));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          appBarTheme: appBarTheme,
          scaffoldBackgroundColor: Color(0xff0a0e21),
        ),
        home: InputPage());
  }
}


