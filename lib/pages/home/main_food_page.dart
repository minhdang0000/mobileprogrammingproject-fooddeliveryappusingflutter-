import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_food_delivery/utils/dimensions.dart';
import 'package:project_food_delivery/widgets/big_text.dart';
import 'package:project_food_delivery/widgets/small_text.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //showing the haeder
          Container(
            child: Container(
              margin: EdgeInsets.only(top:Dimensions.height45, bottom: Dimensions.height15),
                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "Food Delivery", color: Color(0xFF80CBC4)),
                        Row(
                          children: [
                            SmallText(text: "Menu", color: Colors.black54,),
                            Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        width: Dimensions.height45,
                        height: Dimensions.height45,
                        child: Icon(Icons.search, color: Colors.white, size:Dimensions.iconSize24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                          color: Color(0xFF80CBC4),
                        ),
                      ),
                    )
                  ],
                )
            ),
          ),
          //showing the body
          Expanded(child: SingleChildScrollView(
            child:FoodPageBody(),
          ))
        ],
      )
    );
  }


}

