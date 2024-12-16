import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_food_delivery/utils/dimensions.dart';
import 'package:project_food_delivery/widgets/account_widget.dart';
import 'package:project_food_delivery/widgets/app_icon.dart';
import 'package:project_food_delivery/widgets/big_text.dart';

class AccountPage extends StatelessWidget{
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: BigText(
          text: "Profile", size: 24, color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top:Dimensions.height20 ),
        child: Column(

          children: [
            //profile icon
            AppIcon(icon: Icons.person,
            backgroundColor: AppColors.mainColor,
            iconColor: Colors.white,
            iconSize: Dimensions.height45+Dimensions.height30,
            size: Dimensions.height15*10,),
            SizedBox(height: Dimensions.height30,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                
                    //name
                    AccountWidget(
                        appIcon: AppIcon(icon: Icons.person,
                          backgroundColor: AppColors.mainColor,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10*5/2,
                          size: Dimensions.height10*5,),
                
                        bigText: BigText(text: "HaNgoc",
                                        color: Colors.black,)
                    ),
                    SizedBox(height: Dimensions.height20,),
                    //phone
                    AccountWidget(
                        appIcon: AppIcon(icon: Icons.phone,
                          backgroundColor: Colors.green,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10*5/2,
                          size: Dimensions.height10*5,),
                
                        bigText: BigText(text: "0396930803", color: Colors.black)
                    ),
                    SizedBox(height: Dimensions.height20,),
                    //email
                    AccountWidget(
                        appIcon: AppIcon(icon: Icons.email,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10*5/2,
                          size: Dimensions.height10*5,),
                
                        bigText: BigText(text: "hangoc@gmail.com", color: Colors.black)
                    ),
                    SizedBox(height: Dimensions.height20,),
                    //address
                    AccountWidget(
                        appIcon: AppIcon(icon: Icons.location_on,
                          backgroundColor: Colors.redAccent,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10*5/2,
                          size: Dimensions.height10*5,),
                
                        bigText: BigText(text: "Bac Giang City", color: Colors.black)
                    ),
                    SizedBox(height: Dimensions.height20,),
                    //message
                    AccountWidget(
                        appIcon: AppIcon(icon: Icons.message_outlined,
                          backgroundColor: Colors.pinkAccent,
                          iconColor: Colors.white,
                          iconSize: Dimensions.height10*5/2,
                          size: Dimensions.height10*5,),
                
                        bigText: BigText(text: "Enter your profile", color: Colors.black)
                    ),
                    SizedBox(height: Dimensions.height20,),
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