import 'package:bmi_provider/widgets/logic_state.dart';
import 'package:bmi_provider/widgets/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateButton extends StatefulWidget {
  const CalculateButton({Key? key}) : super(key: key);

  @override
  _CalculateButtonState createState() => _CalculateButtonState();
}

class _CalculateButtonState extends State<CalculateButton> {
  @override
  Widget build(BuildContext context) {
    var currentState = Provider.of<LogicState>(context, listen: false);

    return GestureDetector(

      onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (ctx)=> Results(
           heightResult: currentState.height,
           weightResult: currentState.weight,
           ageResult: currentState.age,
           genderResult: currentState.gender)));
      },
      child: Padding(
        padding: const EdgeInsets.only(
            left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
        child: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
              child: Text(
            'Calculate',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
