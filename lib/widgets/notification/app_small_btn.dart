import 'package:chefio/utilities/colors.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:flutter/material.dart';

class AppSmallBtn extends StatelessWidget {
  final double? width;
  final String? text;
  final Border? border;
  final TextStyle? textStyle;
  final Color? color;
  const AppSmallBtn({
    this.textStyle,
    this.border,
    this.width,
    this.text,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: width ?? 100,
      decoration: BoxDecoration(
        border: border,
        color: color ?? Kcolor.appGreenColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text ?? 'Follow',
          style: textStyle ?? KTextStyle.smallWhiteText,
        ),
      ),
    );
  }
}
