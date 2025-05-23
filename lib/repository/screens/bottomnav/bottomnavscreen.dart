import 'package:flutter/material.dart';
import 'package:shopping_e_commerce_app/repository/screens/bottomnav/cart/cartscreen.dart';
import 'package:shopping_e_commerce_app/repository/screens/bottomnav/category/categoryscreen.dart';
import 'package:shopping_e_commerce_app/repository/screens/bottomnav/home/homescreen.dart';
import 'package:shopping_e_commerce_app/repository/screens/bottomnav/print/printscreen.dart';
import 'package:shopping_e_commerce_app/repository/widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  var currentIndex = 0;
  var pages = <Widget>[
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(url: "home.png"), label: "Home"),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(url: "shopping-bag.png"),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(url: "category.png"),
              label: "Category"),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(url: "printer.png"), label: "Printer"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
