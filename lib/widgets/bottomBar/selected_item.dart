import 'package:chefio/utilities/text_style.dart';
import 'package:flutter/material.dart';

Widget selectedItem(
    {required Widget icon,
    required String title,
    Function()? onTap,
    int? index,
    int? selected}) {
  return MaterialButton(
    onPressed: onTap,
    minWidth: 40,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        Text(
          title,
          style: selected == index
              ? KTextStyle.smallGreenText
              : KTextStyle.smallGreyText,
        ),
      ],
    ),
  );
}
