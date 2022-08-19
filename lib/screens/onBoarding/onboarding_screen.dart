import 'package:chefio/gen/assets.gen.dart';
import 'package:chefio/screens/auth/login_page.dart';
import 'package:chefio/utilities/colors.dart';
import 'package:chefio/utilities/strings.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:chefio/widgets/onboarding/app_btn.dart';
import 'package:flutter/material.dart';

class OnboardingScreens extends StatefulWidget {
  static const String id = '/';
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.65,
              child: Assets.images.onboarding.image(fit: BoxFit.fill),
            ),
            const Text(
              Kstring.onBoardingHeader,
              style: KTextStyle.bigBoldBlackText,
            ),
            const Text(
              Kstring.onBoardingSubHeader,
              textAlign: TextAlign.center,
              style: KTextStyle.mediumGreyText,
            ),
            appBtn(
              context,
              width: 0.9,
              textStyle: KTextStyle.btnTextStyle,
              color: Kcolor.appGreenColor,
              onTap: () {
                Navigator.pushNamed(context, LoginPage.id);
              },
              text: Kstring.getStarted,
            )
          ],
        ),
      ),
    );
  }
}
