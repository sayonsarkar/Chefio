import 'package:chefio/utilities/strings.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:chefio/widgets/auth/sign_up/pass_check_green.dart';
import 'package:chefio/widgets/auth/sign_up/pass_check_grey.dart';
import 'package:flutter/material.dart';

class PasswordChecks extends StatelessWidget {
  const PasswordChecks({
    Key? key,
    required this.firstCheck,
    required this.secondCheck,
  }) : super(key: key);

  final bool firstCheck;
  final bool secondCheck;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Kstring.passwordCheck,
            style: KTextStyle.mediumMainText,
          ),
          firstCheck
              ? const PassCheckGreen(text: Kstring.passwordBullet1)
              : const PassWordCheckGrey(text: Kstring.passwordBullet1),
          secondCheck
              ? const PassCheckGreen(text: Kstring.passwordBullet2)
              : const PassWordCheckGrey(text: Kstring.passwordBullet2)
        ],
      ),
    );
  }
}
