import 'package:flutter/material.dart';
import 'constants.dart';

class GenderCardContent extends StatelessWidget {
  final IconData icon;
  final String cardText;
  GenderCardContent({@required this.icon, @required this.cardText});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kiconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: klabelTextStyle,
        )
      ],
    );
  }
}
