

import 'dart:math';

class BMICalc {
  BMICalc({required this.height,required this.weight,required this.gender,required this.age});

  int height;
  int weight;
  final int gender;
  int age;

  double _bmi = 0;

  void calculate() {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBMIValue() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi >= 25) {
      return 'Overweight';
    }
    else if(_bmi > 18) {
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if(_bmi >= 25) {
      return 'You have a higher than normal weight. Try exercise more.';
    }
    else if(_bmi > 18) {
      return 'You have a normal body weight. Keep it up.';
    }
    else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  void setWeight(int value) {
    weight = value;
  }
  int getWeight() {
    return weight;
  }

  void setHeigh(int value) {
    height = value;
  }

  int getHeight() {
    return height;
  }

  void increaseWeight(int inc) {
    weight += inc;
  }

  void decreaseWeight(int inc) {
    weight -= inc;
  }





}