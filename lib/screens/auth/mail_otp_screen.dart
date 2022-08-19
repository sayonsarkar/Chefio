import 'package:chefio/utilities/colors.dart';
import 'package:chefio/utilities/strings.dart';
import 'package:chefio/utilities/text_style.dart';
import 'package:chefio/widgets/auth/email/email_screen_buttons.dart';
import 'package:chefio/widgets/auth/email/otp_counter.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EmailOtpPage extends StatefulWidget {
  static const String id = '/emailOtp';
  const EmailOtpPage({Key? key}) : super(key: key);

  @override
  State<EmailOtpPage> createState() => _EmailOtpPageState();
}

class _EmailOtpPageState extends State<EmailOtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                const Text(
                  'Check your email',
                  style: KTextStyle.bigBoldBlackText,
                ),
                const Text(
                  Kstring.emailScreenSubHeader,
                  style: KTextStyle.regularGreyText,
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  pinTheme: PinTheme.defaults(
                    borderRadius: BorderRadius.circular(15),
                    shape: PinCodeFieldShape.box,
                    inactiveColor: Kcolor.lightGrey,
                    selectedColor: Kcolor.appGreenColor,
                    fieldWidth: 65,
                    fieldHeight: 60,
                  ),
                  onChanged: (value) {},
                ),
                const OtpCounter(),
                const EmailScreenButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
