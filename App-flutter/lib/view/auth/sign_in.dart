import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suuperjet/constants.dart';
import 'package:suuperjet/view/auth/sign_up.dart';

import '../screen1.dart';

class SignIn extends StatelessWidget {
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Container(
        margin: EdgeInsets.only(top: 20,left:20,right: 20),
        padding: EdgeInsets.only(top: 30,left: 30,right: 30),
        width: Get.width,
        height: Get.height*.6,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: Get.height*.03,),
                Text('SIGN IN',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: mainColor
                ),),
                SizedBox(height: Get.height*.03,),

                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onSaved: (val){
                    emailController.text=val!;
                  },
                  validator: (val){
                    if(val ==null || val.isEmpty){
                      return 'email is empty';
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person,color: Colors.grey,),
                      hintText: 'E-MAIL'
                  ),
                ) ,
                SizedBox(height: Get.height*.01,),

                TextFormField(
                  onSaved: (val){
                    passwordController.text=val!;
                  },
                  validator: (val){
                    if(val ==null || val.isEmpty){
                      return 'password is empty';
                    }
                  },
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                      hintText: 'PASSWORD'
                  ),
                ),
                SizedBox(height: Get.height*.05,),

                ElevatedButton(onPressed: (){
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text('Done')),
                    );
                    Get.to(Screen1());
                  }
                },
                  style: ElevatedButton.styleFrom(
                      primary: mainColor,
                      fixedSize: Size.fromWidth(Get.width*.6)
                  ),
                  child: Text('SIGN IN',style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),), ),
                SizedBox(height: Get.height*.03,),

                GestureDetector(
                  onTap: (){
                    Get.to(SignUp());
                  },
                  child: Column(
                    children: [
                      Text('Need an account?  sign up now',style: TextStyle(
                          fontSize: 16,
                          color: secondColor
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(height: 0,thickness: 1,color: secondColor,),
                      )
                    ],
                  ),
                ),
                SizedBox(height: Get.height*.03,),

                Text('Log out',style: TextStyle(
                    fontSize: 17,
                    color: Colors.black
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}
