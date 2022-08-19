import 'package:chefio/utilities/colors.dart';
import 'package:flutter/material.dart';

class KTextStyle {
  static const bigBoldBlackText = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w900,
  );
  static const regularMainText = TextStyle(color: Kcolor.mainText);
  static const mediumMainText = TextStyle(
      color: Kcolor.mainText, fontSize: 17, fontWeight: FontWeight.bold);
  static const regularRedText = TextStyle(color: Kcolor.googleRedColor);
  static const regularGreyText = TextStyle(color: Kcolor.textGrey);
  static const regularGreenText = TextStyle(color: Kcolor.appGreenColor);
  static const mediumGreyText = TextStyle(color: Kcolor.textGrey, fontSize: 17);
  static const smallGreyText = TextStyle(color: Kcolor.textGrey, fontSize: 12);
  static const smallWhiteText =
      TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold);

  static const smallGreenText =
      TextStyle(color: Kcolor.appGreenColor, fontSize: 12);
  static const boldMainText = TextStyle(
      color: Kcolor.mainText, fontWeight: FontWeight.bold, fontSize: 15);
  static const btnTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15);
}
