import 'dart:math';

class CalculateLogic {
  static double Calculate(int height, int weight) {
    double bmiCalculate = weight / pow(height / 100, 2);
    return bmiCalculate;
  }
}