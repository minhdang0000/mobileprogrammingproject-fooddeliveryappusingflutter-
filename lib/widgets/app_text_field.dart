import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class AppTextField extends StatelessWidget{
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  const AppTextField({Key? key,

  required this.textController,
  required this.hintText,
  required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(left: Dimensions.height20, right: Dimensions.height20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 7,
                offset: Offset(1, 10),
                color: Colors.grey.withOpacity(0.2)
            )
          ]
      ),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          //hinText
            hintText: hintText,
            //prefixIcon
            prefixIcon: Icon(icon, color: AppColors.yellowColor,),
            //focusedBorder
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.white,
                )
            ),
            //enable Border
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.white,
                )
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius30),

            )
        ),
      ),
    );
  }
}