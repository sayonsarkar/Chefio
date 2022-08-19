import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/screens/auth/sign_up_page.dart';
import 'package:chefio/utilities/colors.dart';
import 'package:chefio/utilities/strings.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:chefio/widgets/auth/login/login_text_fields.dart';
import 'package:chefio/widgets/onboarding/app_btn.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String id = '/loginPage';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const LoginTextFields(),
              const SizedBox(height: 20),
              appBtn(
                context,
                width: 1,
                color: Kcolor.appGreenColor,
                text: Kstring.login,
                textStyle: KTextStyle.btnTextStyle,
                onTap: () {
                  Navigator.pushNamed(context, SignUpScreen.id);
                },
              ),
              const Text(
                Kstring.continueWith,
                style: KTextStyle.regularGreyText,
              ),
              appBtn(
                context,
                width: 1,
                color: Kcolor.googleRedColor,
                textStyle: KTextStyle.btnTextStyle,
                text: Kstring.google,
                btnImage: Assets.icons.google.image(scale: 2),
              ),
              RichText(
                text: const TextSpan(
                  style: KTextStyle.regularMainText,
                  children: [
                    TextSpan(text: Kstring.noAccountText),
                    TextSpan(
                      text: Kstring.signUp,
                      style: KTextStyle.regularGreenText,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
