import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({@required this.height, @required this.weight});
  String getResult() {
    if (_bmi >= 40) {
      return 'obésité morbide!';
    } else if (_bmi >= 35) {
      return 'obésité sévère';
    } else if (_bmi >= 30) {
      return 'obésité modérée';
    } else if (_bmi >= 25) {
      return 'surpoids';
    } else if (_bmi >= 18.5) {
      return 'poids normal';
    } else if (_bmi >= 16.5) {
      return 'maigreur';
    } else {
      return 'dénutrition!!';
    }
  }

  String getInterpretation() {
    if (_bmi >= 40) {
      return 'ATTENTION vous êtes en surpoids CRITIQUE, il faut consulter!';
    } else if (_bmi >= 35) {
      return 'Vous êtes en grand surpoids important il faut agir.';
    } else if (_bmi >= 30) {
      return 'Vous êtes en surpoids, un petit régime ?';
    } else if (_bmi >= 25) {
      return 'Votre dépassez la corpulence normal, un petit régime ?';
    } else if (_bmi >= 18.5) {
      return 'Votre corpulence est normal, bien joué!';
    } else if (_bmi >= 16.5) {
      return 'Vous êtes trop maigre.';
    } else {
      return 'ATTENTION vous êtes trop maigre et en DANGER, Il faut consulter!';
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
