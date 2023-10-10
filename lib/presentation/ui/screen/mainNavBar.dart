import 'package:cruftybuy/presentation/state_holders/main_nav_controler.dart';
import 'package:cruftybuy/presentation/ui/cardScreen.dart';
import 'package:cruftybuy/presentation/ui/screen/CatagoriesScreen.dart';
import 'package:cruftybuy/presentation/ui/screen/homeScreen.dart';
import 'package:cruftybuy/presentation/ui/screen/wish_list_screen.dart';
import 'package:cruftybuy/presentation/ui/utlity/appcolor.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainNavBarScreen extends StatefulWidget {
  const MainNavBarScreen({super.key});

  @override
  State<MainNavBarScreen> createState() => _MainNavBarScreenState();
}

class _MainNavBarScreenState extends State<MainNavBarScreen> {
  MainNavContoler mainNavContoler = Get.put(MainNavContoler());

  final List<Widget> _screen = [
    const MyhomeScreen(),
    const CatagoriesScreen(),
    const CartScreen(),
    const MyWishListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavContoler>(builder: (controller) {
      return Scaffold(
        body: _screen[controller.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex,
            onTap: controller.changeScreen,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_outlined),
                label: 'wish',
              ),
            ]),
      );
    });
  }
}
