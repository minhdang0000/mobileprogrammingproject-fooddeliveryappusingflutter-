import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_food_delivery/base/show_custom_snackbar.dart';
import 'package:project_food_delivery/models/signup_body_model.dart';
import 'package:project_food_delivery/utils/dimensions.dart';
import 'package:project_food_delivery/widgets/app_text_field.dart';
import 'package:project_food_delivery/widgets/big_text.dart';

class SignUpPage extends StatelessWidget{
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var signUpImages = [
      "t.png",
      "f.png",
      "g.png"
    ];
    void _registration(){
      String name = nameController.text.trim();
      String phone = phoneController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if(name.isEmpty){
        showCustomSnackBar("Vui lòng nhập tên của bạn!", title: "Name");
      }else if(phone.isEmpty){
        showCustomSnackBar("Vui lòng nhập số điện thoại của bạn!", title: "Phone number");
      }else if(email.isEmpty){
        showCustomSnackBar("Vui lòng nhập email của bạn!", title: "Email address");
      }else if(!GetUtils.isEmail(email)){
        showCustomSnackBar("Địa chỉ email không hợp lệ!", title: "Valid email address");
      }else if(password.isEmpty){
        showCustomSnackBar("Vui lòng nhập mật khẩu của bạn!", title: "password");
      }else if(password.length<6){
        showCustomSnackBar("Mật khẩu của bạn không được ít hơn 6 kí tự!", title: "Password");
      }else{
        showCustomSnackBar("Bạn đã đăng kí tài khoản thành công", title: "Perfect");
        SignUpBody signUpBody = SignUpBody(name: name,
            phone: phone,
            email: email,
            password: password);
        print(signUpBody.toString());
      }

    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: Dimensions.screenHeight*0.05,),
            //app logo
            Container(
              height: Dimensions.screenHeight*0.25,
              child: Center(
                child: CircleAvatar(
                  backgroundColor:Colors.white,
                  radius: 80,
                  backgroundImage: AssetImage(
                    "assets/image/logo3.png"
                  ),
                ),
              ),
            ),
            //your email
            AppTextField(textController: emailController,
                        hintText: "Email",
                        icon: Icons.email,),
            SizedBox(height: Dimensions.height20,),
            //your password
            AppTextField(textController: passwordController,
              hintText: "Password",
              icon: Icons.password_sharp,),
            SizedBox(height: Dimensions.height20,),
            //your name
            AppTextField(textController: nameController,
              hintText: "Name",
              icon: Icons.person,),
            SizedBox(height: Dimensions.height20,),
            //your phone
            AppTextField(textController: phoneController,
              hintText: "Phone",
              icon: Icons.phone,),
            SizedBox(height: Dimensions.height20,),
            //sign up bottom
            GestureDetector(
              onTap: (){
                _registration();
              },
              child: Container(
                width: Dimensions.screenWidth/2,
                height: Dimensions.screenHeight/13,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: AppColors.mainColor
                ),
                child: Center(
                  child: BigText(
                    text: "Sign up",
                    size: Dimensions.font20+Dimensions.font20/2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        
            SizedBox(height: Dimensions.height10,),
            //tag line
            RichText(
                text: TextSpan(
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                  text: "Have an account already?",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: Dimensions.font20
                  )
                )
            ),
            SizedBox(height: Dimensions.screenHeight*0.05,),
            //sign up option
            RichText(
                text: TextSpan(
        
                    text: "Sign up using one of the following methods",
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: Dimensions.font16
                    )
                )
            ),
            Wrap(
              children: List.generate(3, (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: Dimensions.radius30,
                  backgroundImage: AssetImage(
                    "assets/image/"+signUpImages[index]
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}