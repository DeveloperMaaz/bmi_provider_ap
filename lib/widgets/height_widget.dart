import 'package:bmi_provider/widgets/logic_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeightWidget extends StatefulWidget {
  const HeightWidget({Key? key}) : super(key: key);

  @override
  _HeightWidgetState createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  @override
  Widget build(BuildContext context) {
    var currentState = Provider.of<LogicState>(context, listen: false);
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Height",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Consumer<LogicState>(
                        builder: (context, value, child) => Text(
                          currentState.sliderValue.toString(),
                          style: const TextStyle(
                              fontSize: 55,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Text(
                        "Cm",
                        style: TextStyle(
                            textBaseline: TextBaseline.alphabetic,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Slider(
                      value: currentState.sliderValue.toDouble(),
                      min: 0,
                      max: 225,
                      onChanged: (value) {
                        setState(() {
                          currentState.sliderValue = value.toInt();
                        });
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
