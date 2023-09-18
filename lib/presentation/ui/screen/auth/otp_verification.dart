import 'package:cruftybuy/presentation/ui/screen/complete_profile_screen.dart';
import 'package:cruftybuy/presentation/ui/utlity/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:get/get.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({super.key});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Enter OTP code',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 26,
                    ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text('A 4 digit code has been sent',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 16,
                      )),
              const SizedBox(
                height: 12,
              ),
              PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  activeColor: Colors.white,
                  selectedColor: AppColors.primaryColor,
                  selectedFillColor: Colors.white,
                  inactiveColor: AppColors.primaryColor,
                ),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.white,
                enableActiveFill: false,

                // errorAnimationController: errorController,
                // controller: textEditingController,
                onCompleted: (v) {
                  //print("Completed");
                },
                onChanged: (value) {
                  // print(value);
                  // setState(() {
                  //   currentText = value;
                  // });
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
                appContext: context,
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(() => const COmpleteProfileScreen());
                  },
                  child: const Text('Next'),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              RichText(
                text: TextSpan(
                  text: 'This code will expire in',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 16,
                      ),
                  children: [
                    TextSpan(
                      text: '120s',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor,
                          ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Resend Code',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
