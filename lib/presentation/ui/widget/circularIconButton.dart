import 'package:flutter/material.dart';

class circularIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const circularIcon({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade100,
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
