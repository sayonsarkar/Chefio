import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:flutter/material.dart';

class PassCheckGreen extends StatelessWidget {
  final String text;
  const PassCheckGreen({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.icons.checkGreen.image(scale: 2),
        const SizedBox(width: 10),
        Text(
          text,
          style: KTextStyle.regularMainText,
        ),
      ],
    );
  }
}
