import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'logic_state.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({Key? key}) : super(key: key);

  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  @override
  Widget build(BuildContext context) {
    var currentState = Provider.of<LogicState>(context, listen: true);
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
                onTap: () {
                  currentState.selectMale();
                },
                child: Consumer<LogicState>(
                  builder: (context, value, child) => Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.mars,
                          color: Colors.white,
                          size: 100,
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color:
                            value.male ? Colors.greenAccent : Colors.lightGreen,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )),
          ),
          Expanded(
            child: GestureDetector(
                onTap: () {
                  currentState.selectFemale();
                },
                child: Consumer<LogicState>(
                  builder: (context, value, child) => Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.venus,
                          color: Colors.white,
                          size: 100,
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: value.female
                            ? Colors.greenAccent
                            : Colors.lightGreen,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
