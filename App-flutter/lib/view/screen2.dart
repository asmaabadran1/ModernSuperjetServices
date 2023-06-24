import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import 'auth/sign_in.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20,left: 5,right: 5),
          child: Column(
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Get.to(SignIn());
                        },
                        child: Icon(Icons.person_pin,color:mainColor,size: 30,)),                    Icon(Icons.notifications_none,color: mainColor,size: 30,)
                  ],
                  ),
                  Icon(Icons.close,color:mainColor,size: 30,)
                ],
              ),
              Container(

                height: MediaQuery.of(context).size.height*.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){

                      },
                      child: Text('HOME',style: TextStyle(
                        fontSize: 30,
                        color: secondColor
                      ),),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){

                      },
                      child: Text('SERVICES',style: TextStyle(
                        fontSize: 30,
                        color: Colors.teal[300]
                      ),),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){

                      },
                      child: Text('OFFERS',style: TextStyle(
                          fontSize: 30,
                          color: Colors.teal[300]
                      ),),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){

                      },
                      child: Text('CONTACT US',style: TextStyle(
                          fontSize: 30,
                          color: Colors.teal[300]
                      ),),
                    ),
                  ],
                ),
              )
            ],
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
        ),
      ),
    );
  }
}
