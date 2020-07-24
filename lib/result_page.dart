import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmicalculator/reusable_card.dart';
import 'package:bmicalculator/botomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiresult,
      @required this.resultText,
      @required this.comment});

  final String bmiresult;
  final String resultText;
  final String comment;

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
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Tu Resultado',
                style: kResultTittle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiresult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    comment,
                    textAlign: TextAlign.center,
                    style: kBMICommentTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BotomButton(
            buttonTittle: 'RE-CALCULAR',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
