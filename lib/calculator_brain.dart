import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({@required this.height, @required this.weight});
  String getResult() {
    if (_bmi >= 25) {
      print('coucou1 $_bmi');
      return 'SURPOIDS';
    } else {
      if (_bmi >= 21) {
        print('coucou2 $_bmi');
        return 'Normal';
      } else {
        print('lol $_bmi');
        return 'UnderWeight';
      }
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'GROLARS va faire du sport FEIGNASSE';
    } else if (_bmi >= 18.5) {
      return 'Votre corpulence est normal, good job!';
    } else {
      return 'Vous êtes trop maigre, il faut manger!';
    }
  }

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    print('calcul en cours....');
    print(_bmi);
    print(_bmi.toStringAsFixed(1));
    return _bmi.toStringAsFixed(1);
  }
}
