import 'package:cruftybuy/application/app.dart';
import 'package:cruftybuy/presentation/ui/screen/auth/email_verification_screen.dart';
import 'package:cruftybuy/presentation/ui/screen/homeScreen.dart';
import 'package:cruftybuy/presentation/ui/screen/mainNavBar.dart';
import 'package:cruftybuy/presentation/ui/screen/product_detailsScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToNextScreen();
  }

  void goToNextScreen() {
    // using getx
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Get.offAll(() => const EmailVerificationScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: SvgPicture.asset(
              'assets/images/logo.svg',
            ),
          ),
          const Spacer(),
          const CircularProgressIndicator(),
          const SizedBox(height: 20),
          const Text(
            'Version 1.0.0',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
