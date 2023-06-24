import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suuperjet/view/screen1.dart';
import 'package:suuperjet/view/screen3.dart';
import 'package:suuperjet/view/screen6.dart';
import 'package:suuperjet/view/screen8.dart';

import '../constants.dart';
import 'auth/sign_in.dart';

class Screen5 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<String> images=[
    'images/discount2.png',
    'images/cairo.png',
    'images/giza-mdpi.png',
    'images/dahab.png',
    'images/6october.png',
    'images/sharm.png',
    'images/alex.png',
    'images/fayom.png',
  ];
  List<String> view=[
    'view',
    'view',
    'view',
    '',
    'view',
    'view',
    'view',
    'view',
  ];
  List<String> names=[
    'Aswan',
    'Cairo',
    'Giza',
    'Dhab',
    '6 October',
    'Sharm ElShikh',
    'Alexandria',
    'Fauom',

  ];
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
                            child: Icon(Icons.person_pin,color:mainColor,size: 30,)),
                        Icon(Icons.notifications_none,color: mainColor,size: 30,)
                      ],
                    ),
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close,color:mainColor,size: 30,))                  ],
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
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        width: 30,
                        height: 2,
                        color: mainColor,
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
      child:Icon(Icons.segment,size: 28,color:mainColor,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: Get.height*.02),
                child: Image.asset('images/discount.png')) ,
            Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text('Get a promotional code',style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                    ),),

                  ],
                )),
            ElevatedButton(
              onPressed: (){},
              child: Text('CREATE CODE'),
              style: ElevatedButton.styleFrom(
                primary: mainColor
              ),
            ),
            SizedBox(height: Get.height*.04,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: Get.width,
              height: Get.height*.7,
              child: ListView.separated(
                separatorBuilder: (context,index){
                  return Container(
                    height: 20,
                    width: Get.width,
                  );
                },
                  itemCount: images.length,
                  itemBuilder: (context,index){
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: Get.width*.8,
                      height: Get.height*.25,
                      child: GestureDetector(
                          onTap: (){
                            Get.to(Screen6(
                              image: images[index],
                            ));
                          },
                          child: Image.asset('${images[index]}',fit: BoxFit.fill,)),
                    ),
                    Text('${view[index]}',style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                    ),),
                    Positioned(
                      child: Text('${names[index]}',style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                      ),),
                      bottom: 7,
                      left: 25,
                    ),
                  ],
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
