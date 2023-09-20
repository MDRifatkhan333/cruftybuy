import 'package:cruftybuy/presentation/ui/screen/CatagoriesScreen.dart';
import 'package:cruftybuy/presentation/ui/screen/homeScreen.dart';
import 'package:cruftybuy/presentation/ui/screen/wish_list_screen.dart';
import 'package:cruftybuy/presentation/ui/utlity/appcolor.dart';

import 'package:flutter/material.dart';

class MainNavBarScreen extends StatefulWidget {
  const MainNavBarScreen({super.key});

  @override
  State<MainNavBarScreen> createState() => _MainNavBarScreenState();
}

class _MainNavBarScreenState extends State<MainNavBarScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screen = [
    const MyhomeScreen(),
    const CatagoriesScreen(),
    const MyhomeScreen(),
    const MyWishListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
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
  }
}
