import 'package:chefio/utilities/text_style.dart';
import 'package:flutter/material.dart';

class OtpCounter extends StatelessWidget {
  const OtpCounter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'code expires in:',
          style: KTextStyle.regularMainText,
        ),
        TweenAnimationBuilder<Duration>(
            duration: const Duration(minutes: 3),
            tween: Tween(begin: const Duration(minutes: 3), end: Duration.zero),
            onEnd: () {},
            builder: (BuildContext context, Duration value, Widget? child) {
              final seconds = value.inSeconds % 60;
              final minutes = value.inMinutes;
              return Text(
                ' $minutes:$seconds ',
                style: KTextStyle.regularRedText,
              );
            })
      ],
    );
  }
}
