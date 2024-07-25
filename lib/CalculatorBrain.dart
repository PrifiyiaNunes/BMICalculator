import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi =  weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi >= 25) {
      return "OverWeight";
    }else if(_bmi > 18.5) {
      return "Normal";
    }else {
      return "UnderWeight";
    }
  }

  String getAdvice() {
    if(_bmi >= 25) {
      return "You have more than normal BMI value. Try to add some exercise in your routine";
    }else if(_bmi > 18.5) {
      return "You are perfectly healthy!";
    }else {
      return "You seems to be stressed out, Do add some nutritious food in your diet";
    }
  }
}