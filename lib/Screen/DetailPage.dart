import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/Components/ContainerWidget.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Components/BottomButton.dart';

class DetailPage extends StatelessWidget {

  DetailPage({required this.result, required this.calculateValue, required this.remark});

  final String result;
  final String calculateValue;
  final String remark;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
            child: Text(
              "YOUR RESULT",
              style: kMediumLabelStyle,
            ),
          ),
          Expanded(
            flex: 7,
            child: ContainerWidget(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result,
                    style: const TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    calculateValue,
                    style: kLargeLabelStyle,
                  ),
                  Text(
                    remark,
                    style: kLabelstyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            label: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
