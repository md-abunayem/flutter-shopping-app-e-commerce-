import 'package:flutter/material.dart';
import 'package:shopping_e_commerce_app/main.dart';

import '../../../widgets/uihelper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  var arrContent = [
    {"img": "image 50.png", "name": "Lights, Diyas \n& Candles"},
    {"img": "image 51.png", "name": "Eid \nGifts"},
    {"img": "image 52.png", "name": "Appliances \n& Gadgets"},
    {"img": "image 53.png", "name": "Home \n& Living"},
  ];

  var arrContent2 = [
    {
      "img": "image 54.png",
      "name": "Golden Glass \nWooden Lid Candle (Oudh)",
      "time": "20 MINS",
      "value": "BDT7 79"
    },
    {
      "img": "image 57.png",
      "name": "Royal Gulab Jamun \nBy Bikano",
      "time": "20nMINS",
      "value": "BDT7 79"
    },
    {
      "img": "image 63.png",
      "name": "Bikaji Bhujia\n",
      "time": "20 MINS",
      "value": "BDT7 79"
    },
  ];

  var arrGrocery = [
    {
      "img" : "image 41.png",
      'name' : "Vegetables & \nFruits"
    },{
      "img" : "image 42.png",
      'name' : "Atta, Dal & \n Rice"
    },{
      "img" : "image 43.png",
      'name' : "Oil, Ghee & \nMasala"
    },{
      "img" : "image 44.png",
      'name' : "Dairy, Bread & \nMilk"
    },{
      "img" : "image 45.png",
      'name' : "Biscuits & \nBakery"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UiHelper.CustomAppBar(
              searchController: searchController,
              AppBarColor: Color(0XFFEC0505),
              textColor: Colors.white),
          SizedBox(
            height: 2,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFEC0505),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  UiHelper.CustomText(
                      text: "Mega Eid Sale",
                      fontSize: 20,
                      fontFamily: "bold",
                      textColor: Colors.white),
                  ItemsContainer(arrItems: arrContent)
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ItemsContainer2(arrItems: arrContent2),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: UiHelper.CustomText(text: "Grocery & Kitchen", fontSize: 14,fontFamily: "bold"),
          ),
          UiHelper.ItemsContainer(arrItems: arrGrocery)
        ],
      ),
    );
  }
}

Widget ItemsContainer({required List<Map<String, String>> arrItems}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 12),
        child: SizedBox(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: arrItems.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 130,
                        width: 110,
                        decoration: BoxDecoration(
                          color: Color(0xFFD9EBEB),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.CustomText(
                                text: "${arrItems[index]["name"]}",
                                fontSize: 13,
                                fontFamily: "bold"),
                            UiHelper.CustomImage(
                                url: "${arrItems[index]['img']}"),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
      )
    ],
  );
}

Widget ItemsContainer2({required List<Map<String, String>> arrItems}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 12),
        child: SizedBox(
          height: 230,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: arrItems.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 130,
                            width: 106,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9EBEB),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: UiHelper.CustomImage(
                                url: "${arrItems[index]['img']}"),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: SizedBox(
                              height: 25,
                              width: 40,
                              child: TextButton(
                                  onPressed: () {},
                                  child: UiHelper.CustomText(
                                      text: "ADD",
                                      fontSize: 6,
                                      textColor: Color(0xFF27AF34)),
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          color: Color(0xFF27AF34), width: 2))),
                            ),
                          )
                        ],
                      ),
                    ),
                    UiHelper.CustomText(
                      text: "${arrItems[index]["name"]}",
                      fontSize: 10,
                    ),
                    Row(
                      children: [
                        UiHelper.CustomImage(url: "timer 1.png"),
                        UiHelper.CustomText(
                            text: "${arrItems[index]["time"]}",
                            fontSize: 10,
                            textColor: Color(0xFF9C9C9C)),
                      ],
                    ),
                    UiHelper.CustomText(
                        text: "${arrItems[index]["value"]}",
                        fontSize: 15,
                        textColor: Colors.black,
                        fontFamily: "bold")
                  ],
                );
              }),
        ),
      )
    ],
  );
}
