import 'package:flutter/material.dart';

class catagoriTitle extends StatelessWidget {
  const catagoriTitle({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        TextButton(onPressed: onTap, child: const Text("View All"))
      ],
    );
  }
}
