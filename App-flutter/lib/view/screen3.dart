import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suuperjet/view/screen1.dart';
import 'package:suuperjet/view/screen5.dart';
import 'package:suuperjet/view/screen8.dart';

import '../constants.dart';
import 'auth/sign_in.dart';

class Screen3 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: SafeArea(
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
                            child: Icon(Icons.person_pin,color:mainColor,size: 30,)),                        Icon(Icons.notifications_none,color: mainColor,size: 30,)
                      ],
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close,color:mainColor,size: 30,))
                  ],
                ),
                Container(

                  height: MediaQuery.of(context).size.height*.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.to(Screen1());
                        },
                        child: Text('HOME',style: TextStyle(
                            fontSize: 25,
                            color: secondColor
                        ),),
                      ),

                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Get.to(Screen8());
                        },
                        child: Text('SERVICES',style: TextStyle(
                            fontSize: 25,
                            color: Colors.teal[300]
                        ),),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Get.to(Screen5());
                        },
                        child: Text('OFFERS',style: TextStyle(
                            fontSize: 25,
                            color: Colors.teal[300]
                        ),),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Get.to(Screen3());
                        },
                        child: Text('CONTACT US',style: TextStyle(
                            fontSize: 25,
                            color: Colors.teal[300]
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        width: 30,
                        height: 2,
                        color: mainColor,
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

      ),
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        leading: Stack(
          alignment: Alignment.center,
          children: [
            Container(
                width: Get.width*.2,height: Get.height*.06,
                child: Image.asset('images/leading.png',fit: BoxFit.fill,)),
         Positioned(
             bottom: 12,
             left: Get.width*.069,
             child: Image.asset('images2/900+ Free Mobil.png'))
          ],
        ),
        actions: [
          GestureDetector(
              onTap: (){
                _scaffoldKey.currentState!.openDrawer();
              },
              child: Icon(Icons.segment,size: 28,color:mainColor,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
         Container(
           color: Colors.white,
           width: double.infinity,
           height: Get.height*.2,
           child:Image.asset('images/map.png',fit:BoxFit.fill,)

         ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: Get.height*.05,left: 5),
              child: Text('SEND MESSAGE TO US',style: TextStyle(
                fontSize: 21,
                color: secondColor
              ),),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: Get.height*.02,left: 5),
              child: Text('voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non provident magna aliqua excepteur fugiat null',style: TextStyle(
                fontSize: 16,
                color: Colors.black
              ),),
            ),
            SizedBox(height: Get.height*.04,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width:Get.width*.42,
                  height: 30,
                  child: TextFormField(
                    onSaved: (value){},
                    decoration: InputDecoration(

                      hintText: 'Name',
                      errorBorder: OutlineInputBorder()
                    ),
                  ),
                ),
                Container(
                  width:Get.width*.42,
                  height: 30,
                  child: TextFormField(
                    onSaved: (value){},
                    decoration: InputDecoration(

                     hintText: 'E-mail',
                      errorBorder: OutlineInputBorder()
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height*.030,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.bottomLeft,
              child: Text('Message',style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54
              ),),
            ),
            SizedBox(height: Get.height*.008,),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  color: Colors.white,
                  width:Get.width,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: Get.height*.13,
                  child: TextFormField(
                    onSaved: (value){},
                    decoration: InputDecoration(
                        errorBorder: OutlineInputBorder()
                    ),
                  ),
                ),
                Icon(Icons.message,color: Colors.grey.shade300,size: Get.height*.07,)
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.topLeft,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: mainColor
                  ),
                  child: Text(
                    'SUBMIT'
                  )),
            ),
            SizedBox(height: Get.height*.035,),

            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: Get.height*.15,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.call,color: secondColor,),
                              Text('PHONE',style: TextStyle(color: Colors.black54,fontSize: 13),)

                            ],
                          ),
                          Text('+023333333',style: TextStyle(color: Colors.black54,fontSize: 12),)
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.email_outlined,color: secondColor,),
                              Text('E-MAIL',style: TextStyle(color: Colors.black54,fontSize: 13),)

                            ],
                          ),
                          Text('superSurvicegmail.com',style: TextStyle(color: Colors.black54,fontSize: 12),)
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.timelapse,color: secondColor,),
                              Text('WORKING TIME',style: TextStyle(color: Colors.black54,fontSize: 13),)

                            ],
                          ),
                          Column(
                            children: [
                              Text('FROM  TO',style: TextStyle(color: Colors.black54,fontSize: 13),),
                              Text('8.00 AM  - 4.00 PM',style: TextStyle(color: Colors.black54,fontSize: 13),),
                              Text('MON - WED',style: TextStyle(color: Colors.black54,fontSize: 13),),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('social_icons/facebook.png'),
                        SizedBox(width: 10,),
                        Image.asset('social_icons/instagram-mdpi.png'),
                        SizedBox(width: 10,),

                        Image.asset('social_icons/twitter-bird-mdpi.png'),
                        SizedBox(width: 10,),

                        Image.asset('social_icons/bxl-telegram-mdpi.png'),
                        SizedBox(width: 10,),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
