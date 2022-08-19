import 'package:chefio/utilities/text_style.dart';
import 'package:flutter/material.dart';

class NotificationHeader extends StatelessWidget {
  final String text;
  const NotificationHeader({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        text,
        style: KTextStyle.mediumMainText,
      ),
    );
  }
}
