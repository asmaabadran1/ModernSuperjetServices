import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suuperjet/view/screen1.dart';
import 'package:suuperjet/view/screen14.dart';
import 'package:suuperjet/view/screen3.dart';
import 'package:suuperjet/view/screen5.dart';
import 'package:suuperjet/view/screen8.dart';

import '../constants.dart';
import 'auth/sign_in.dart';

class Screen13 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String? from;
  String? to;
  dynamic date;
  dynamic date2;
  Screen13({this.to,this.from,this.date,this.date2});
  List products=[
    'products/coffe.png',
    'products/2.png',
    'products/3.png',
    'products/4.png',
    'products/5.png',
    'products/6.png',
    'products/7.png',
  ];
  List price=[
    '25',
    '20',
    '10',
    '7',
    '30',
    '23',
    '15',
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
                            child: Icon(Icons.person_pin,color:mainColor,size: 30,)),                        Icon(Icons.notifications_none,color: mainColor,size: 30,)
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
                      Container(
                        margin: EdgeInsets.only(right: 30),
                        width: 30,
                        height: 2,
                        color: mainColor,
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
      child: Icon(Icons.segment,size: 28,color:mainColor,))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: Get.height*.015,
                horizontal:Get.width*.14,),
              width: Get.width,
              height: Get.height*.43,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey
                  )
                ]
              ),
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Image.asset('products/product1.png'),
                  SizedBox(height: 15,),

                  Text('SELECT ATRIP',style: TextStyle(
                    fontSize: 20,
                    color: secondColor
                  ),),
                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('From',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54
                      ),),
                      Text('$from',style: TextStyle(
                          fontSize: 17,
                          color: Colors.black
                      ),),
                      SizedBox(width: 5,)
                    ],
                  ),
                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('To',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54
                      ),),
                      Text('$to',style: TextStyle(
                          fontSize: 17,
                          color: Colors.black
                      ),),
                      SizedBox(width: 5,)
                    ],
                  ),
                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Date',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54
                      ),),
                      Text('$date',style: TextStyle(
                          fontSize: 17,
                          color: Colors.black
                      ),),
                      SizedBox(width: 5,)
                    ],
                  ),
                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Return',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54
                      ),),
                      Text('$date2',style: TextStyle(
                          fontSize: 17,
                          color: Colors.black
                      ),),
                      SizedBox(width: 5,)
                    ],
                  ),
                  SizedBox(height: 10),

                  Container(
                   margin: EdgeInsets.symmetric(horizontal: Get.width*.14),
                   width: Get.width,
                   height: 2,
                   color: Colors.black45,
                 ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('TICKET',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54
                      ),),
                      Text('300 EGP',style: TextStyle(
                          fontSize: 17,
                          color: Colors.black
                      ),),
                      SizedBox(width: 5,)
                    ],
                  ),
                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('TOTAL',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54
                      ),),
                      Text('30 EGP',style: TextStyle(
                          fontSize: 17,
                          color: Colors.black
                      ),),
                      SizedBox(width: 5,)
                    ],
                  ),
                  SizedBox(height: 10),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: Get.width*.14),
                    width: Get.width,
                    height: 2,
                    color: Colors.black45,
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('TOTAL',style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54
                      ),),
                      Text('330 EGP',style: TextStyle(
                          fontSize: 17,
                          color: Colors.black
                      ),),
                      SizedBox(width: 5,)
                    ],
                  ),


                ],
              ),
            ),
            ElevatedButton(onPressed: (){
              Get.to(Screen14(
                from: from,
                to: to,
                date2: date2,
                date: date,
              ));
            },
                style: ElevatedButton.styleFrom(
                    primary: mainColor
                ),
                child: Text('GET TICKET')),
            Container(
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.topLeft,
              child: Text('Menu’s Service',style: TextStyle(
                  fontSize: 19,
                  color: Colors.black45
              ),),
            ),
            SizedBox(height: 10,),

            Container(
              height: Get.height*.8,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: products.length,
                  itemBuilder: (context,index){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('${products[index]}',width: Get.width*.25,),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.add,color: Colors.black45),
                          Container(
                            width: 1,
                            color: Colors.grey[500],
                            height: Get.height*.04,
                          ),
                          Text('0',style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45
                          ),),
                          Container(
                            width: 1,
                            color: Colors.grey[500],
                            height: Get.height*.04,
                          ),
                          Icon(Icons.remove_rounded,color: Colors.black45)
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),
                      width: Get.width*.3,
                      height: Get.height*.04,
                      color: Colors.grey[200],
                    ),
                    Text('${price[index]} EGP',style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45
                    ),),
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
