import 'package:flutter/material.dart';
import 'package:shopping_e_commerce_app/domain/constants/appcolors.dart';
import 'package:shopping_e_commerce_app/repository/widgets/uihelper.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TextEditingController searchController = TextEditingController();

  var arrBestsellers = [
    {
      "img": "image 45.png",
      "name": "Amul Taaza Toned \nFresh Milk",
      "time": "20 MINS",
      "value": "BDT 27"
    },
    {
      "img": "image 44.png",
      "name": "Potato (Aloo)",
      "time": "20 MINS",
      "value": "BDT 37"
    },
    {
      "img": "image 46.png",
      "name": "Hybrid Tomato",
      "time": "20 MINS",
      "value": "BDT 37"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        UiHelper.CustomAppBar(
          searchController: searchController,
        ),
        SizedBox(
          height: 20,
        ),
        Image.asset(
          "assets/images/Shopping-cart.png",
          height: 170,
          width: 170,
          fit: BoxFit.cover,
        ),
        UiHelper.CustomText(
            text: "Reordering will be easy", fontSize: 18, fontFamily: "bold"),
        UiHelper.CustomText(
            text:
                'Items you order will show up here so you can buy\nthem again easily.',
            fontSize: 12),
        SizedBox(
          height: 30,
        ),
        UiHelper.CustomText(
            text: 'Bestseller', fontSize: 18, fontFamily: "bold"),
        ItemsContainer(arrItems: arrBestsellers),
      ],
    ));
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
              physics: NeverScrollableScrollPhysics(),
              itemCount: arrItems.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(children: [
                        Container(
                          height: 108,
                          width: 96,
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
                            height:25,
                            width:40,
                            child: TextButton(onPressed: () {
                            }, child: UiHelper.CustomText(text: "ADD", fontSize: 6,textColor: Color(0xFF27AF34)),
                            style:TextButton.styleFrom(
                              backgroundColor:Colors.white,
                              side: BorderSide(color: Color(0xFF27AF34),width: 2)
                            )
                            ),
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
