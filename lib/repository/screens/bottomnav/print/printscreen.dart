import 'package:flutter/material.dart';

import '../../../widgets/uihelper.dart';

class PrintScreen extends StatefulWidget {
  const PrintScreen({super.key});

  @override
  State<PrintScreen> createState() => _PrintScreenState();
}

class _PrintScreenState extends State<PrintScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD3C6A1),
      body: Column(
        children: [
          UiHelper.CustomAppBar(
            searchController: searchController,
          ),
          SizedBox(
            height: 40,
          ),
          UiHelper.CustomText(
              text: "Print Store", fontSize: 32, fontFamily: "bold"),
          UiHelper.CustomText(
              text: "Shopping ensures secure prints at every stage",
              fontSize: 14,
              textColor: Color(0xFF6C6666),
              fontFamily: "bold"),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 170,
            width: 410,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UiHelper.CustomText(
                          text: "Document", fontSize: 14, fontFamily: "bold"),
                      Row(
                        children: [
                          UiHelper.CustomImage(url: "✦.png"),
                          SizedBox(
                            width: 10,
                          ),
                          UiHelper.CustomText(
                            text: "Price starting at rs 3/page",
                            fontSize: 14,
                            textColor: Color(0xFF6C6666),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          UiHelper.CustomImage(url: "✦.png"),
                          SizedBox(
                            width: 10,
                          ),
                          UiHelper.CustomText(
                            text: "Paper quality: 70 GSM",
                            fontSize: 14,
                            textColor: Color(0xFF6C6666),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          UiHelper.CustomImage(url: "✦.png"),
                          SizedBox(
                            width: 10,
                          ),
                          UiHelper.CustomText(
                            text: "Single side prints",
                            fontSize: 14,
                            textColor: Color(0xFF6C6666),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: Text("Upload Files"),
                      style:ElevatedButton.styleFrom(backgroundColor: Color(0xFF27AF34)),)
                    ],
                  ),
                ),
                Positioned(
                  right: 30,
                    bottom: 30,
                    child: UiHelper.CustomImage(url: "image 62.png"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
