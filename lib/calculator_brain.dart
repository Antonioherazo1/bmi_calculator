import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'SobrePeso';
    } else if (_bmi > 18) {
      return 'Normal';
    } else {
      return 'Bajo de Peso';
    }
  }

  String getComment() {
    if (_bmi >= 25) {
      return 'Debes hacer más ejercicios';
    } else if (_bmi > 18) {
      return 'Estas dentro de lo normal, Muy Bien!!';
    } else {
      return 'Debes comer más, Vamos!!';
    }
  }
}
