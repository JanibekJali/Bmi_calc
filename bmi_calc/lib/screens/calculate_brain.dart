import 'dart:math';

class CalculateBrain {
  CalculateBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    try {
      if (_bmi >= 25) {
        return 'Overweight';
      } else if (_bmi > 18.5) {
        return 'Normal';
      } else {
        return 'Underweight';
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. To to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal bodu weight. Good job';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}

CalculateBrain calculateBrain = CalculateBrain();
