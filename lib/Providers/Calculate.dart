import 'dart:math';

class Calculate {
  Calculate({this.height, this.weight});

  final double height;
  final int weight;

  double _bmi;

  String calc() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String description() {
    if (_bmi >= 25) {
      return 'You\'r Weight is Higher than Normal , Try Do Exercises..';
    } else if (_bmi >= 18.5) {
      return 'You\'r Weight is Normal , Great Job..';
    } else {
      return 'You\'r Weight is Lower Than Normal! , Eat a bit more..';
    }
  }
}
