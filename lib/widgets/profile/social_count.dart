import 'package:chefio/utilities/text_style.dart';
import 'package:flutter/material.dart';

Column socialCount({required String count, required String header}) {
  return Column(
    children: [
      Text(
        count,
        style: KTextStyle.mediumMainText,
      ),
      Text(
        header,
        style: KTextStyle.smallGreyText,
      )
    ],
  );
}
