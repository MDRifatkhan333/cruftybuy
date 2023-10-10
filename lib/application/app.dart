import 'package:cruftybuy/application/state_holder_binding.dart';
import 'package:cruftybuy/presentation/ui/screen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      //initialBinding: StateHolderBinder(),
    );
  }
}
