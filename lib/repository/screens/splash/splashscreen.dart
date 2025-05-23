import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopping_e_commerce_app/repository/screens/login/loginscreen.dart';
import 'package:shopping_e_commerce_app/repository/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {  // Closing parenthesis was misplaced
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LogInScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFC020),
        child: Center(
          child: UiHelper.CustomImage(url: "logo.png"),
        ),
      ),
    );
  }
}
