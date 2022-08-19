import 'package:flutter/material.dart';

Widget appBtn(BuildContext context,
    {required num width,
    Widget? btnImage,
    required Color color,
    Function()? onTap,
    TextStyle? textStyle,
    Border? border,
    required String text}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: MediaQuery.of(context).size.width * width,
      height: 55,
      decoration: BoxDecoration(
        border: border,
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          btnImage ?? const SizedBox.shrink(),
          Text(
            text,
            style: textStyle,
          ),
        ],
      ),
    ),
  );
}
