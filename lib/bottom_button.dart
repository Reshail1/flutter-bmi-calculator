import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onPress;
  BottomButton({@required this.text, @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        color: kbuttonColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kbottomContainerHeight,
        child: Center(
          child: Text(text, style: kLargeButtonStyle),
        ),
      ),
    );
  }
}
