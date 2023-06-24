import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suuperjet/view/auth/sign_in.dart';
import 'package:suuperjet/view/screen1.dart';

import '../../constants.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  TextEditingController userController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  TextEditingController birthController =TextEditingController();
  int _radioSelected = 1;
  String? _radioVal;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 20,left:30,right: 30),
          padding: EdgeInsets.only(top: 25,left: 30,right: 30),
          width: Get.width,
          height: Get.height*.9,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(height: Get.height*.03,),
                  Text('SIGN UP',style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: secondColor
                  ),),
                  SizedBox(height: Get.height*.03,),

                  TextFormField(
                    onSaved: (val){
                     userController.text=val!;
                    },
                    validator: (val){
                      if(val ==null || val.isEmpty){
                        return 'user name is empty';
                      }
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person,color: Colors.grey,),
                        hintText: 'USER NAME'
                    ),
                  ) ,

                  TextFormField(
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
                        hintText: 'CONFIRM PASSWORD'
                    ),
                  ),
                  SizedBox(height: Get.height*.01,),

                  TextFormField(
                    onSaved: (val){
                     birthController.text=val!;
                    },
                    validator: (val){
                      if(val ==null || val.isEmpty){
                        return 'birth is empty';
                      }
                    },
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        hintText: 'BIRTH',
                      suffixIcon: Icon(Icons.date_range)
                    ),
                  ),
                  SizedBox(height: Get.height*.03,),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('GENDER',style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400]
                    ),),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 1,
                    groupValue: _radioSelected,
                    activeColor: Colors.blue,
                    onChanged: (dynamic value) {
                      setState(() {
                        _radioSelected = value;
                        _radioVal = 'male';
                      });
                    },
                  ),
                  Text('Male'),
SizedBox(width: 20,),
                  Radio(
                    value: 2,
                    groupValue: _radioSelected,
                    activeColor: Colors.pink,
                    onChanged: (dynamic value) {
                      setState(() {
                        _radioSelected = value;
                        _radioVal = 'female';
                      });
                    },
                  ),
                  Text('Female'),
                ],
              ),
                  SizedBox(height: Get.height*.02,),

                  ElevatedButton(onPressed: (){
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Done')),
                      );
                      Get.to(Screen1());
                    }
                  },
                    style: ElevatedButton.styleFrom(
                        primary: secondColor,
                        fixedSize: Size.fromWidth(Get.width*.6)
                    ),

                    child: Text('SIGN UP',style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),), ),
                  SizedBox(height: Get.height*.03,),

                  GestureDetector(
                    onTap: (){
                      Get.to(SignIn());
                    },
                    child: Column(
                      children: [
                        Text('Already have an account?  sign in',style: TextStyle(
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
