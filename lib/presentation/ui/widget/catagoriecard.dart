import 'package:cruftybuy/presentation/ui/utlity/appcolor.dart';
import 'package:flutter/material.dart';

class catagoriCard extends StatelessWidget {
  const catagoriCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 233, 233),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.food_bank_outlined,
                size: 70,
                color: AppColors.primaryColor,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Food",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
