import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suuperjet/view/screen1.dart';
import 'package:suuperjet/view/screen13.dart';
import 'package:suuperjet/view/screen3.dart';
import 'package:suuperjet/view/screen5.dart';
import 'package:suuperjet/view/screen8.dart';

import '../constants.dart';
import 'auth/sign_in.dart';

class Screen12 extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String? from;
  String? to;
  dynamic date;
  dynamic date2;
  Screen12({this.to,this.from,this.date,this.date2});
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
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(5)
              ),
              padding: EdgeInsets.all(1),
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
                              Text('From',style: TextStyle(color: Colors.black54,fontSize: 9),)

                            ],
                          ),
                          Text('$from',style: TextStyle(color: Colors.black54,fontSize: 9),)
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
                          Text('$to',style: TextStyle(color: Colors.black54,fontSize: 9),)
                        ],
                      ),Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.date_range,size: 11,),
                              Text('Departure\n Date',style: TextStyle(color: Colors.black54,fontSize: 9),)

                            ],
                          ),
                          Text('$date',style: TextStyle(color: Colors.black54,fontSize: 9),)
                        ],
                      ),
                      Text('Return Date?',style: TextStyle(color: Colors.black54,fontSize: 9),),
                      ElevatedButton(

                          onPressed: (){},
                          style: ElevatedButton.styleFrom(

                            primary: Colors.grey[600],
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Text(
                                'EDIT SEARCH',style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                           Container(
                             width: Get.width*.1,
                             height: 1,
                             color: mainColor,
                           )
                            ],
                          )),
                    ],
                  ),
                ],
              ),
            ),
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
              padding: EdgeInsets.symmetric(horizontal: 12),
              width: double.infinity,
              height: Get.height*.31,
                child: Column(
                  children: [
                    SizedBox(height: 8,),

                    Text('Superjet Station',style: TextStyle(
                      fontSize: 17,color: Colors.black45
                    ),),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                        label: Text('PCK UP POINT')
                      ),
                    ),
                    SizedBox(height: 15,),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                        label: Text('DROP OF POINT')
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text('3 TICKET SELECTED',style: TextStyle(
                        fontSize: 16,color: Colors.black45
                    ),),
                  ],
                ),
            ), Container(
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
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
              width: double.infinity,
              height: Get.height*.25,
               child: Column(
                 children: [
                   Row(
                     children: [
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/grey_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                   Icon(Icons.arrow_forward_rounded,color:secondColor,)
                     ],
                   ),
                   SizedBox(height: 12,),
                   Row(
                     children: [
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/grey_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                     ],
                   ),
                   SizedBox(height: Get.height*.06,),
                   Row(
                     children: [
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/grey_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                       Image.asset('images2/green_seat.png'),
                     ],
                   ),
                 ],
               ),
            ),
            Row(
              children: [
                Image.asset('images2/grey_seat.png'),
                Text('Solid out',style: TextStyle(
                    color: Colors.black,fontSize: 12
                )),
                Image.asset('images2/green_seat.png'),
                Text('Avalable',style: TextStyle(
                    color: Colors.black,fontSize: 12
                )),
                Image.asset('images2/green_selected.png'),
                Text('Selected',style: TextStyle(
                    color: Colors.black,fontSize: 12
                )),
                SizedBox(width: Get.width*.05,),
                ElevatedButton(onPressed: (){
                  Get.to(Screen13(
                    from: from,
                    to: to,
                    date: date,
                    date2: date2,
                  ));
                },
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Text('VIEW MENU',style: TextStyle(
                      color: Colors.black,fontSize: 12
                    ),))
              ],
            ),
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
              Get.to(Screen13(
                from: from,
                  date: date,
                  date2: date2,
                to: to,
              ));
            },
                style: ElevatedButton.styleFrom(
                    primary: mainColor
                ),
                child: Text('GET TICKET')),
          ],
        ),
      ),
    );
  }
}
