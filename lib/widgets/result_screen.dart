import 'package:bmi_provider/widgets/calculate_logic.dart';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  String genderResult;
  int heightResult;
  int weightResult;
  int ageResult;

  Results({
    required this.heightResult,
    required this.weightResult,
    required this.ageResult,
    required this.genderResult,
  });

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  double? bmiValue;

  @override
  void initState() {
    super.initState();
    bmiValue =
        CalculateLogic.Calculate(widget.heightResult, widget.weightResult);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Result')),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Gender: ${widget.genderResult}",
                style: const TextStyle(fontSize: 25.0, color: Colors.black,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'BMI Result:',
                style: TextStyle(fontSize: 36.0,fontWeight:  FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                '${bmiValue!.toStringAsFixed(1)} kg/m2',
                style:
                    const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
