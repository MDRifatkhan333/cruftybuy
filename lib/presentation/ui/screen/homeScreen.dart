import 'package:cruftybuy/presentation/ui/screen/CatagoriesScreen.dart';
import 'package:cruftybuy/presentation/ui/utlity/imageAssets.dart';
import 'package:cruftybuy/presentation/ui/widget/home/catagoriecard.dart';
import 'package:cruftybuy/presentation/ui/widget/circularIconButton.dart';
import 'package:cruftybuy/presentation/ui/widget/home/catagoriesTitle.dart';
import 'package:cruftybuy/presentation/ui/widget/home/homeSlider.dart';
import 'package:cruftybuy/presentation/ui/widget/home/productCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

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
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const HomeSlider(),
              const SizedBox(
                height: 10,
              ),
              catagoriTitle(
                title: "All Catagories",
                onTap: () {
                  Get.to(() => const CatagoriesScreen());
                },
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const catagoriCard();
                  },
                  shrinkWrap: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              catagoriTitle(
                title: "Popular",
                onTap: () {},
              ),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const productcard();
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              catagoriTitle(
                title: "Special",
                onTap: () {},
              ),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const productcard();
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              catagoriTitle(
                title: "New",
                onTap: () {},
              ),
              SizedBox(
                height: 165,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const productcard();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
