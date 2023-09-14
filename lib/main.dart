import 'package:cruftybuy/application/app.dart';
import 'package:cruftybuy/presentation/ui/screen/splashScreen.dart';
import 'package:cruftybuy/presentation/ui/utlity/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:
            MaterialColor(AppColors.primaryColor.value, AppColors().color),
      ),
      home: const SplashScreen(),
    );
  }
}
