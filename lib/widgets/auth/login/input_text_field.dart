import 'package:chefio/utilities/colors.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:flutter/material.dart';

TextFormField inputField(
    {Widget? prefixIcon,
    String? hintText,
    Widget? suffixIcon,
    onChanged,
    bool? autofocus}) {
  return TextFormField(
    autofocus: autofocus ?? false,
    onChanged: (value) => onChanged(value),
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: KTextStyle.regularGreyText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon ?? const SizedBox.shrink(),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Kcolor.lightGrey),
        borderRadius: BorderRadius.circular(30),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Kcolor.appGreenColor),
      ),
    ),
  );
}
