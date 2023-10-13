import 'package:cruftybuy/presentation/state_holders/emailVerification_controller.dart';
import 'package:cruftybuy/presentation/ui/screen/auth/otp_verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  EmailVerificationController emailVerificationController =
      Get.put(EmailVerificationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
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
                  'Welcome Back',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 26,
                      ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text('Please verify your email',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 16,
                        )),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    labelText: 'Enter your email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? text) {
                    if (text == null || text.isEmpty) {
                      return 'Please enter your email';
                    } else if (text.isEmail == false) {
                      return 'Please enter a valid email';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: GetBuilder<EmailVerificationController>(
                      builder: (controller) {
                    if (controller.emailVerificationInProgress) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          emailVerify(controller);
                        }
                        emailController.clear();
                      },
                      child: const Text('Next', style: TextStyle(fontSize: 16)),
                    );
                  }),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                    // width: double.infinity,
                    // child: GetBuilder<EmailVerificationController>(
                    //     builder: (controller) {
                    //   if (controller.emailVerificationInProgress) {
                    //     return const Center(
                    //       child: CircularProgressIndicator(),
                    //     );
                    //   }
                    //   return ElevatedButton(
                    //     onPressed: () async {
                    //       if (_formKey.currentState!.validate()) {
                    //         emailVerify(controller);
                    //       }
                    //     },
                    //     child: const Text('Next'),
                    //   );
                    // }),
                    ),
              ],
            ),
          ),
        )),
      ),
    );
  }

  Future<void> emailVerify(EmailVerificationController controller) async {
    final response = await controller.verifyEmail(emailController.text.trim());
    if (response) {
      Get.to(() => const OTPVerification());
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Email verification failed! Try again'),
          ),
        );
      }
    }
  }
}
