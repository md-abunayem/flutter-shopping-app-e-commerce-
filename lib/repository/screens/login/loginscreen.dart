import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_e_commerce_app/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:shopping_e_commerce_app/repository/widgets/uihelper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomImage(url: "Shopping Onboarding Screen.png"),
            SizedBox(height: 30),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 100,
                  width: 100,
                )),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: "Shopping – Everything You Need, Just a Tap Away!",
                fontSize: 22,
                fontFamily: "bold"),
            SizedBox(
              height: 25,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Container(
                height: 200,
                width: 350,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    UiHelper.CustomText(
                        text: "Nayem",
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                    UiHelper.CustomText(
                        text: "78737xxxxx",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        textColor: Color(0xFF9C9C9C)),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      height: 48,
                      width: 295,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green.withOpacity(0.2),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){return BottomNavScreen();}));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.grey, width: 1.5),
                          ),
                          elevation: 0, // Important: Remove default shadow
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.CustomImage(url: "google.png"),
                            SizedBox(width: 12),
                            UiHelper.CustomText(
                              text: "Log in with Google",
                              fontSize: 16, // Slightly larger for readability
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    UiHelper.CustomText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        fontSize: 10,
                        textColor: Color(0xFF9C9C9C)),
                    SizedBox(
                      height: 20,
                    ),
                    UiHelper.CustomText(text: "or login with phone number", fontSize: 14,textColor: Color(0xFF269237))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
