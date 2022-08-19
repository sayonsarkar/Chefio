import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/utilities/strings.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:chefio/widgets/auth/login/input_text_field.dart';
import 'package:flutter/material.dart';

class LoginTextFields extends StatelessWidget {
  const LoginTextFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            Kstring.welcomeBack,
            style: KTextStyle.bigBoldBlackText,
          ),
          const Text(
            Kstring.welcomeSubHeader,
            style: KTextStyle.regularGreyText,
          ),
          inputField(
            prefixIcon: Assets.icons.message.image(scale: 2),
            hintText: Kstring.emailOrPhone,
          ),
          inputField(
            prefixIcon: Assets.icons.lock.image(scale: 2),
            hintText: Kstring.forgotPassword,
            suffixIcon: const Icon(
              Icons.remove_red_eye_outlined,
            ),
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              Kstring.forgotPassword,
              style: KTextStyle.regularMainText,
            ),
          ),
        ],
      ),
    );
  }
}
