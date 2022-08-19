import 'package:chefio/screens/auth/password_recovery_screen.dart';
import 'package:chefio/utilities/colors.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:chefio/widgets/onboarding/app_btn.dart';
import 'package:flutter/material.dart';

class EmailScreenButtons extends StatelessWidget {
  const EmailScreenButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          appBtn(
            context,
            textStyle: KTextStyle.btnTextStyle,
            width: 1,
            color: Kcolor.appGreenColor,
            text: 'Verify',
            onTap: () {
              Navigator.pushNamed(context, PasswordRecovery.id);
            },
          ),
          appBtn(
            context,
            width: 1,
            textStyle: KTextStyle.regularGreyText,
            color: Colors.white,
            border: Border.all(color: Kcolor.lightGrey, width: 2.0),
            text: 'Send again',
          )
        ],
      ),
    );
  }
}
