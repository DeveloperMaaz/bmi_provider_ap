import 'package:bmi_provider/widgets/age_widget.dart';
import 'package:bmi_provider/widgets/calculate_button.dart';
import 'package:bmi_provider/widgets/gender_widget.dart';
import 'package:bmi_provider/widgets/height_widget.dart';
import 'package:bmi_provider/widgets/weight_widget.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Calculator"),),
      body: Column(
        children:  [

          const GenderSelection(),
          const HeightWidget(),
          Expanded(
            child: Row(
              children: const [
                WeightWidget(),
                AgeWidget(),
              ],
            ),
          ),
          const CalculateButton(),
        ],
      ),
    );
  }
}
