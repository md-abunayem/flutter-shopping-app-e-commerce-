import 'package:flutter/material.dart';

import '../../../widgets/uihelper.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TextEditingController searchController = TextEditingController();
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

  var arr2Grocery = [
    {
      "img" : "image 21.png",
      'name' : "Dry Fruits & \nCereals"
    },{
      "img" : "image 22.png",
      'name' : "Kitchen & \nAppliances"
    },{
      "img" : "image 23.png",
      'name' : "Tea & \nCoffees"
    },{
      "img" : "image 24.png",
      'name' : "Ice Creams & \nmuch more"
    },{
      "img" : "image 25.png",
      'name' : "Noodles & \nPacket Food"
    },
  ];

  var arrSnacks = [
    {
      "img" : "image 31.png",
      'name' : "Chips & \nNamkeens"
    },{
      "img" : "image 32.png",
      'name' : "Sweets & \nChocalates"
    },{
      "img" : "image 33.png",
      'name' : "Drinks & \nJuices"
    },{
      "img" : "image 34.png",
      'name' : "Sauces & \nSpreads"
    },{
      "img" : "image 35.png",
      'name' : "Beauty & \nCosmetics"
    },
  ];


  var arrHouseholds = [
    {
      "img" : "image 36.png",
      'name' : "Surf Excel"
    },{
      "img" : "image 37.png",
      'name' : "Skin strands"
    },{
      "img" : "image 38.png",
      'name' : "Black"
    },{
      "img" : "image 39.png",
      'name' : "Sopha"
    },{
      "img" : "image 40.png",
      'name' : "Hair Oil"
    },
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UiHelper.CustomAppBar(searchController: searchController,),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: UiHelper.CustomText(text: "Grocery & Kitchen", fontSize: 14, fontFamily: "bold"),
          ),
          UiHelper.ItemsContainer(arrItems: arrGrocery,),
          UiHelper.ItemsContainer(arrItems: arr2Grocery,),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: UiHelper.CustomText(text: "Snacks & Drinks", fontSize: 14, fontFamily: "bold"),
          ),
          UiHelper.ItemsContainer(arrItems: arrSnacks,),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: UiHelper.CustomText(text: "Household Essentials", fontSize: 14, fontFamily: "bold"),
          ),
          UiHelper.ItemsContainer(arrItems: arrHouseholds,),

        ],
      )
    );
  }

}

