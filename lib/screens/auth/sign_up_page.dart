import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/screens/auth/mail_otp_screen.dart';
import 'package:chefio/utilities/colors.dart';
import 'package:chefio/utilities/global.dart';
import 'package:chefio/utilities/strings.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:chefio/widgets/auth/login/input_text_field.dart';
import 'package:chefio/widgets/auth/sign_up/password_check.dart';
import 'package:chefio/widgets/onboarding/app_btn.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = '/signUp';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool firstCheck = false, secondCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  Kstring.signUpWelcome,
                  style: KTextStyle.bigBoldBlackText,
                ),
                const Text(
                  Kstring.signUpSubHeader,
                  style: KTextStyle.regularGreyText,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      inputField(
                          hintText: Kstring.emailOrPhone,
                          prefixIcon: Assets.icons.message.image(scale: 2)),
                      inputField(
                        hintText: Kstring.password,
                        prefixIcon: Assets.icons.lock.image(scale: 2),
                        suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                        onChanged: (String value) {
                          value.length >= 6
                              ? setState(() {
                                  firstCheck = true;
                                })
                              : setState(() {
                                  firstCheck = false;
                                });
                          value.contains(Global.nemRegex) && value == ''
                              ? setState(() {
                                  secondCheck = true;
                                })
                              : setState(() {
                                  secondCheck = false;
                                });
                        },
                      ),
                    ],
                  ),
                ),
                PasswordChecks(
                    firstCheck: firstCheck, secondCheck: secondCheck),
                appBtn(
                  context,
                  width: 1,
                  textStyle: KTextStyle.btnTextStyle,
                  color: Kcolor.appGreenColor,
                  text: Kstring.signUp,
                  onTap: () {
                    Navigator.pushNamed(context, EmailOtpPage.id);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
