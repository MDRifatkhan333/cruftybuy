import 'package:cruftybuy/presentation/state_holders/main_nav_controler.dart';
import 'package:cruftybuy/presentation/ui/widget/home/catagoriecard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatagoriesScreen extends StatefulWidget {
  const CatagoriesScreen({super.key});

  @override
  State<CatagoriesScreen> createState() => _CatagoriesScreenState();
}

class _CatagoriesScreenState extends State<CatagoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.find<MainNavContoler>().changeScreen(0);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Catagories',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
              onPressed: () {
                Get.find<MainNavContoler>().changeScreen(0);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return const catagoriCard();
              },
            ),
          ),
        ),
      ),
    );
  }
}
