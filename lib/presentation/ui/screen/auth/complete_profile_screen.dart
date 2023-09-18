import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class COmpleteProfileScreen extends StatefulWidget {
  const COmpleteProfileScreen({super.key});

  @override
  State<COmpleteProfileScreen> createState() => _COmpleteProfileScreenState();
}

class _COmpleteProfileScreenState extends State<COmpleteProfileScreen> {
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
                height: 20,
              ),
              Center(
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Complete profile',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 26,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text('Get started with us with your profile',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 16,
                      )),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'First name',
                  labelText: 'First name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Last name',
                  labelText: 'Last name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Mobile',
                  labelText: 'Mobile',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'City',
                  labelText: 'City',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                maxLines: 4,
                decoration: const InputDecoration(
                  hintText: 'Shiping address',
                  labelText: 'Shiping address',
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
                    Get.offAll(() => const COmpleteProfileScreen());
                  },
                  child: const Text('Complete'),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
