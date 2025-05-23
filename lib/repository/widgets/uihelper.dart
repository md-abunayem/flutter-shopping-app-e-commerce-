import 'package:flutter/material.dart';
import 'package:shopping_e_commerce_app/domain/constants/appcolors.dart';

class UiHelper {
  static Widget CustomImage({required String url}) {
    return Image.asset("assets/images/$url");
  }

  static Widget CustomText(
      {required String text,
      required double fontSize,
      Color textColor = Colors.black,
      FontWeight? fontWeight,
      String? fontFamily,
      TextAlign textAlign = TextAlign.center}) {
    return Text(
      text,
      textAlign : textAlign,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
          fontFamily: fontFamily != null ? fontFamily : "regular",
      ),
    );
  }

  static CustomAppBar({required TextEditingController searchController,Color AppBarColor = AppColors.scaffoldbackground, Color textColor = Colors.black}){
    return Stack(
      children: [
        Container(
          height: 190,
          width: double.infinity,
          color: AppBarColor,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              UiHelper.CustomText(text: "Shopping in", fontSize: 12,fontFamily: "bold",textColor: textColor),
              UiHelper.CustomText(text: "20 minutes", fontSize: 20,fontFamily: "bold",textColor: textColor),
              Row(
                children: [
                  UiHelper.CustomText(text: "Home - ", fontSize: 12,fontFamily: "bold",textColor: textColor),
                  UiHelper.CustomText(text: "Abu Nayem, Asulia, Savar, Dhaka", fontSize: 12,textColor: textColor),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              SizedBox(height: 8,),
              Container(
                height: 37,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search ice-cream",
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.mic,color: Colors.black,)
                  ),
                ),
              )
            ],

          ),
        ),
        Positioned(
          top: 70,
          right: 20,
          child: CircleAvatar(
            radius: 15,
            child: Icon(Icons.person,size: 20,),
          ),
        )
      ],
    );
  }

  static Widget ItemsContainer({required List<Map<String, String>> arrItems}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12),
          child: SizedBox(
            height: 140,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: arrItems.length,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height:  78,
                          width: 71,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9EBEB),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: UiHelper.CustomImage(url: "${arrItems[index]['img']}"),
                        ),
                      ),
                      UiHelper.CustomText(text: "${arrItems[index]["name"]}", fontSize: 10,),
                    ],
                  );
                }),
          ),
        )
      ],
    );
  }

}
