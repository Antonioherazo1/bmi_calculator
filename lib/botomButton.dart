import 'package:flutter/material.dart';
import 'constants.dart';
import 'result_page.dart';

class BotomButton extends StatelessWidget {
  BotomButton({this.buttonTittle, this.onTap});

  final Function onTap;
  final String buttonTittle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTittle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottonContainerColor,
        margin: EdgeInsets.only(top: 20.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBotonContainerHeight,
      ),
    );
  }
}
