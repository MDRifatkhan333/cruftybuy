import 'package:cruftybuy/presentation/ui/screen/auth/otp_verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Email',
                labelText: 'Enter your email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OTPVerification(),
                      ));
                },
                child: const Text('Next'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
