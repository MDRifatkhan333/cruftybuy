import 'package:cruftybuy/presentation/state_holders/main_nav_controler.dart';
import 'package:cruftybuy/presentation/ui/widget/home/wishList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyWishListScreen extends StatefulWidget {
  const MyWishListScreen({super.key});

  @override
  State<MyWishListScreen> createState() => _MyWishListScreenState();
}

class _MyWishListScreenState extends State<MyWishListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.find<MainNavContoler>().changeScreenToHome;
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('wish'),
        ),
        body: SafeArea(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return const WishListProductCard();
            },
          ),
        ),
      ),
    );
  }
}
