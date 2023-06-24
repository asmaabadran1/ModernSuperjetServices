import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suuperjet/view/screen1.dart';
import 'package:suuperjet/view/screen12.dart';
import 'package:suuperjet/view/screen3.dart';
import 'package:suuperjet/view/screen5.dart';
import 'package:suuperjet/view/screen8.dart';

import '../constants.dart';
import 'auth/sign_in.dart';

class Screen10 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
String? from;
String? to;
dynamic date;
dynamic date2;
Screen10({this.to,this.from,this.date,this.date2});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 20,left: 2,right: 2),
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
                width: Get.width*.2,height: Get.height*.05,
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
              alignment: Alignment.center,
              margin: EdgeInsets.all(7),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    spreadRadius: .05,
                    blurRadius: 1,
                    color: Colors.grey
                  )
                ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
              ),
              padding: EdgeInsets.all(2),
              width: double.infinity,
              height: Get.height*.135,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined,size: 11),
                              Text('From',style: TextStyle(color: Colors.black54,fontSize:9),)

                            ],
                          ),
                          Text('$from',style: TextStyle(color: Colors.black54,fontSize: 8),)
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 11),
                              Text('To',style: TextStyle(color: Colors.black54,fontSize: 9),)

                            ],
                          ),
                          Text('$to',style: TextStyle(color: Colors.black54,fontSize: 8),)
                        ],
                      ),Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.date_range,size: 12,),
                              Text('Departure\n Date',style: TextStyle(color: Colors.black54,fontSize: 9),)

                            ],
                          ),
                          Text('$date',style: TextStyle(color: Colors.black54,fontSize: 8),)
                        ],
                      ),
                      Column(
                        children: [
                          Text('Return Date?',style: TextStyle(color: Colors.black54,fontSize:8),),
                          Text('$date2',style: TextStyle(color: Colors.black54,fontSize:8),),
                        ],
                      ),
                      ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              primary: mainColor,
                          ),
                          child: Text(
                              'EDIT SEARCH',style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold
                          ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                     Get.defaultDialog(
                         title: '',
                         content:   Container(
                       width: Get.width,
                       height: Get.height*.35,


                       child: Column(
                         children: [
                           Container(

                             child: Text('Superjet',style: TextStyle(fontSize: 17),
                             ),
                             alignment: Alignment.topLeft,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 children: [
                                   Radio(

                                       groupValue: 0,
                                       value: false,
                                       onChanged: (value){}),
                                   Text('Classic',style: TextStyle(fontSize: 14,color: Colors.black54)),
                                   Icon(Icons.info_outline)
                                 ],
                               ) ,Row(
                                 children: [
                                   Radio(

                                       groupValue: 0,
                                       value: false,
                                       onChanged: (value){}),
                                   Text('Elite Plus',style: TextStyle(fontSize: 14,color: Colors.black54)),
                                   Icon(Icons.info_outline)
                                 ],
                               )
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 0),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Row(
                                   children: [
                                     Radio(

                                         groupValue: 0,
                                         value: false,
                                         onChanged: (value){}),
                                     Text('Deulx Plus',style: TextStyle(fontSize: 15,color: Colors.black54)),
                                     Icon(Icons.info_outline)
                                   ],

                                 )
                               ],
                             ),
                           ),
                           Container(
                               margin: EdgeInsets.only(left: 10),
                               alignment: Alignment.topLeft,
                               child: Text('Time',style: TextStyle(fontSize: 15,color: Colors.black54))),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween
                             ,
                             children: [
                               Row(
                                 children: [
                                   Radio(

                                       groupValue: 0,
                                       value: false,
                                       onChanged: (value){}),
                                   Text('AM',style: TextStyle(fontSize: 15,color: Colors.black54)),
                                 ],
                               ) ,Row(
                                 children: [
                                   Radio(

                                       groupValue: 0,
                                       value: false,
                                       onChanged: (value){}),
                                   Text('PM',style: TextStyle(fontSize: 15,color: Colors.black54)),
                                   Icon(Icons.info_outline)
                                 ],
                               )
                             ],
                           ),
                           ElevatedButton(onPressed: (){
                             Get.to(Screen10());
                           },
                               style: ElevatedButton.styleFrom(
                                   primary: mainColor
                               ),
                               child: Text(
                                   'Ok'
                               )),
                         ],
                       ),
                     ));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20,top: 25),
            width: Get.width*.07,
                      height: Get.height*.035,
                      child: Image.asset('images/sliders.png',fit: BoxFit.fill,)),
                ),
                Container(
                    margin: EdgeInsets.only(left: 20,top: 25),
                    width: Get.width*.4,
                    height: Get.height*.035,
                    child: Text('Filter'))
              ],
            ),
            Container(
                margin: EdgeInsets.only(left: 20,top: 20),
                alignment: Alignment.topLeft,
                child: Text('GO TICKET',style: TextStyle(fontSize: 20),)),
            Container(
              width: Get.width,
              height: Get.height*.4,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return   Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: .2
                            )
                          ]
                      ),
                      padding: EdgeInsets.all(6),
                      width: double.infinity,
                      height: Get.height*.15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('From',style: TextStyle(color: Colors.black54,fontSize: 9),),
                              Text('$from',style: TextStyle(color: Colors.black54,fontSize: 9),),
                              Text('02:10 pm',style: TextStyle(color: Colors.black54,fontSize: 9),)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 5,),
                              Image.asset('images2/Line 22.png'),
                              SizedBox(height: 5,),
                              Image.asset('images2/Path 104.png'),
                            ],
                          ),
                          Column(
                            children: [
                              Text('To',style: TextStyle(color: Colors.black54,fontSize: 10),),
                              Text('$to',style: TextStyle(color: Colors.black54,fontSize: 9),),
                              Text('04.30 pm',style: TextStyle(color: Colors.black54,fontSize: 9),),
                            ],
                          ), Column(
                            children: [
                              Text('Date',style: TextStyle(color: Colors.black54,fontSize: 10),),
                              Text('$date',style: TextStyle(color: Colors.black54,fontSize: 8),),
                              SizedBox(height: 3,),
],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  Text('100 EGP',style: TextStyle(color: Colors.black54,fontSize: 11),),
                                  Text('for aseat',style: TextStyle(color: Colors.black54,fontSize: 11),),
                                  ElevatedButton(onPressed: (){
                                    Get.to(Screen12(
                                      date: date,
                                      from: from,
                                      date2:date2,
                                      to: to,));
                                  },
                                      style: ElevatedButton.styleFrom(
                                          primary: mainColor
                                      ),
                                      child: Text(
                                          'SELECT',style: TextStyle(fontSize: 9),
                                      )),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20,top: 20),
                alignment: Alignment.topLeft,
                child: Text('RETURN TICKET',style: TextStyle(fontSize: 20),)),
            Container(
              width: Get.width,
              height: Get.height*.4,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return   Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(

                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: .2
                            )
                          ]
                      ),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: Get.height*.15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('From',style: TextStyle(color: Colors.black54,fontSize: 12),),
                              Text('Cairo',style: TextStyle(color: Colors.black54,fontSize: 11),),
                              Text('02:10 pm',style: TextStyle(color: Colors.black54,fontSize: 11),)
                            ],
                          ),
                          Column(
                            children: [
                              Text('To',style: TextStyle(color: Colors.black54,fontSize: 12),),
                              Text('Aswan',style: TextStyle(color: Colors.black54,fontSize: 11),),
                              Text('04.30 pm',style: TextStyle(color: Colors.black54,fontSize: 11),),
                            ],
                          ), Column(
                            children: [
                              Text('Date',style: TextStyle(color: Colors.black54,fontSize: 12),),
                              Text('$date',style: TextStyle(color: Colors.black54,fontSize: 11),),
                              SizedBox(height: 3,),
],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  Text('100 EGP',style: TextStyle(color: Colors.black54,fontSize: 12),),
                                  Text('for aseat',style: TextStyle(color: Colors.black54,fontSize: 11),),
                                  ElevatedButton(onPressed: (){
                                    Get.to(Screen12(
                                      from: from,
                                      date: date,
                                      to: to,
                                    ));
                                  },
                                      style: ElevatedButton.styleFrom(
                                          primary: mainColor
                                      ),
                                      child: Text(
                                          'SELECT'
                                      )),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
