import 'package:flutter/material.dart';

class LogicState extends ChangeNotifier {
  int height = 120;
  int weight = 50;
  int age = 20;

  bool male = false;
  bool female = false;
  String gender = 'NO Selected';

  var sliderValue = 33;
  double bmivalue = 0;

  void incrementWeight() {
    weight++;
    notifyListeners();
  }

  void decrementWeight() {
    weight--;
    notifyListeners();
  }

  void incrementHeight() {
    height++;
    notifyListeners();
  }

  void decrementHeight() {
    height--;
    notifyListeners();
  }

  void incrementAge() {
    age++;
    notifyListeners();
  }

  void decrementAge() {
    age--;
    notifyListeners();
  }

  void selectMale() {
    male = true;
    female = false;
    gender = "Male";
    notifyListeners();
  }

  void selectFemale() {
    male = false;
    female = true;
    gender = "Female";
    notifyListeners();
  }
}
