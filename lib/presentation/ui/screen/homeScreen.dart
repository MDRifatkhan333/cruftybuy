import 'package:cruftybuy/presentation/ui/utlity/imageAssets.dart';
import 'package:cruftybuy/presentation/ui/widget/circularIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyhomeScreen extends StatefulWidget {
  const MyhomeScreen({super.key});

  @override
  State<MyhomeScreen> createState() => _MyhomeScreenState();
}

class _MyhomeScreenState extends State<MyhomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              SvgPicture.asset(ImagesAssets.cruftybuyNavLogo),
              const Spacer(),
              circularIcon(
                icon: Icons.person_2_outlined,
                onTap: () {},
              ),
              const SizedBox(
                width: 10,
              ),
              circularIcon(
                icon: Icons.call_outlined,
                onTap: () {},
              ),
              const SizedBox(
                width: 10,
              ),
              circularIcon(
                icon: Icons.notifications_active_outlined,
                onTap: () {},
              ),
            ],
          )),
    );
  }
}
