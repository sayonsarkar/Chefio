import 'package:chefio/screens/auth/login_page.dart';
import 'package:chefio/screens/auth/mail_otp_screen.dart';
import 'package:chefio/screens/auth/password_recovery_screen.dart';
import 'package:chefio/screens/auth/sign_up_page.dart';
import 'package:chefio/screens/scanReport/food_page.dart';
import 'package:chefio/utilities/colors.dart';
import 'package:chefio/widgets/components/bottom_bar.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/onBoarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Kcolor.textGrey,
            ),
      ),
      initialRoute: OnboardingScreens.id,
      routes: {
        OnboardingScreens.id: (context) => const OnboardingScreens(),
        LoginPage.id: (context) => const LoginPage(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        EmailOtpPage.id: (context) => const EmailOtpPage(),
        PasswordRecovery.id: (context) => const PasswordRecovery(),
        BottomBar.id: (context) => const BottomBar(),
        FoodScreen.id: (context) => const FoodScreen(),
      },
    );
  }
}
