import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/utilities/colors.dart';
import 'package:chefio/utilities/strings.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:chefio/widgets/auth/login/input_text_field.dart';
import 'package:chefio/widgets/components/bottom_bar.dart';
import 'package:chefio/widgets/onboarding/app_btn.dart';
import 'package:flutter/material.dart';

class PasswordRecovery extends StatelessWidget {
  static const String id = '/passwordRecovery';
  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Password recovery',
                style: KTextStyle.bigBoldBlackText,
              ),
              const Text(
                Kstring.passwordRecoverySubHeader,
                style: KTextStyle.regularGreyText,
              ),
              inputField(
                autofocus: true,
                prefixIcon: Assets.icons.message.image(scale: 2),
                hintText: Kstring.emailOrPhone,
              ),
              appBtn(
                context,
                width: 1,
                color: Kcolor.appGreenColor,
                text: 'Sign In',
                textStyle: KTextStyle.btnTextStyle,
                onTap: () {
                  Navigator.pushNamed(context, BottomBar.id);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
