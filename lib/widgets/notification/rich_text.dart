import 'package:chefio/utilities/text_style.dart';
import 'package:flutter/material.dart';

Widget richText() {
  return RichText(
    text: const TextSpan(
      text: 'John Steve',
      style: KTextStyle.boldMainText,
      children: [
        TextSpan(
          text: ' and',
          style: KTextStyle.regularGreyText,
        ),
        TextSpan(text: '\nDean Winchester')
      ],
    ),
  );
}
