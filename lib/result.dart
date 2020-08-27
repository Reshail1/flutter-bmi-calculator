import 'package:bmi_calculator/resuable_card.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';
import 'constants.dart';

class Result extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  Result(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result', style: kTitleTextStyle),
              ),
            ),
            Expanded(
                child: ResuableCard(
                  colour: kactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText.toUpperCase(), style: kResultsTextStyle),
                      Text(bmiResult, style: kBMITextStyle),
                      Text(interpretation,
                          textAlign: TextAlign.center, style: kBodyTextStyle),
                    ],
                  ),
                ),
                flex: 5),
            BottomButton(
              text: 'Re-Calculate',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
