import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:suuperjet/view/auth/sign_in.dart';
import 'package:suuperjet/view/screen10.dart';
import 'package:suuperjet/view/screen3.dart';
import 'package:suuperjet/view/screen5.dart';
import 'package:suuperjet/view/screen8.dart';

import '../constants.dart';
class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String hint_from='From';
  String hint_to='To';
  String _value = '';
  String _valueTo = '';
 dynamic hintDate='Deprature Date';
 dynamic hintDate2='Return Date';
  List city_from=[
    '',
    'Cairo',
    'Alexandria',
    'Hurghada',
    'Luxor',
    'Suez',
    'Qena',
    'Assiut',
    'Gharbia',
    'Safaga',
    'Sharm Elshiekh',
    'South Sinai',
    'Red Sea',
    'Nuweiba',
    'Matrouh',
    'Elmenia',
    'Port Said',
  ];
   String? from;
   String? to;
  Color orange=Colors.orange;
  DateTime currentDate = DateTime.now();

bool color=true;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List images=[
    'images2/grid1.png',
    'images2/grid2-mdpi.png',
    'images2/grid3.png',
    'images2/grid4.png',
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
           body: SingleChildScrollView(
             child: Column(
               children: [
                 Container(
                   width: Get.width,
                   height: Get.height*.95,
                   child: Stack(
                     alignment: Alignment.topCenter,
                     children: [

                       Container(
                         width: Get.width,
                         height: Get.height*.6,
                         child: Image.asset('images/bus.png',fit: BoxFit.fill,),
                       ),
                       Container(
                         width: Get.width,
                         height: Get.height*.6,
                         child: Image.asset('images/color.png',fit: BoxFit.fill,),
                       ),
                       Positioned(
                         left: 1,
                         top: 25,
                         child: Stack(
                           alignment: Alignment.center,
                           children: [
                             Container(
                                 width: Get.width*.2,height: Get.height*.06,
                                 child: Image.asset('images/leading.png',fit: BoxFit.fill,)),
                             Positioned(
                                 bottom: 10,
                                 left: Get.width*.093,
                                 child: Image.asset('images2/900+ Free Mobil.png'))
                           ],
                         ),
                       ),
                       Positioned(
                         top: 30,
                         right: 10,
                         child:   GestureDetector(
                             onTap: (){
                               _scaffoldKey.currentState!.openDrawer();
                             },
                             child: Icon(Icons.segment,size: 40,color:Colors.white,)),

                       ),
                       Positioned(
                         top: Get.height*.15,
                         child: Column(
                           children: [
                             Text('EASY BOOKING',style: TextStyle(
                               fontSize: 30,
                               fontWeight: FontWeight.bold,
                               color: Colors.white
                             ),),Text('  EASY TRAVILING',style: TextStyle(
                               fontSize: 30,
                               fontWeight: FontWeight.bold,
                               color: Colors.white
                             ),),
                             Container(
                               margin: EdgeInsets.only(left: 10,top: 8,bottom: 8),
                               width: Get.width*.64,
                               height: 4,
                               color: Colors.white,
                             ),
                             Text('GET YOUR TICKET NOW ! ',style: TextStyle(
                                 fontSize: 20,
                                 color: Colors.white
                             ),),
                           ],
                         ),
                       ),
                       Positioned(
                         bottom: 0,
                         child: Container(
                           padding: EdgeInsets.only(top: 15,left: 5,right: 5),
                             decoration: BoxDecoration(
                                 color: Colors.white,

                                 boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey,
                                   blurRadius: 1
                                 )
                               ]
                             ),
                           width: Get.width*.88,
                           height: Get.height*.52,
                           child: Column(
                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: [
                                   Text('Book a ticket\nAnd Select A Trip',style: TextStyle(
                                     color: Colors.black54,
                                     fontSize: 15
                                   ),),
                                   Container(
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         GestureDetector(
                                           onTap: (){
                                             setState(() {
                                               color=true;
                                             });
                                           },
                                           child: Container(
                                             alignment: Alignment.center,
                                             width: Get.width*.2,
                                             height: 40,
                                             color: color?Colors.orange:Colors.grey.shade300,
                                             child: Text('One Way',style: TextStyle(
                                                 fontSize: 10,
                                               fontWeight: FontWeight.bold
                                             ),),
                                           ),
                                         ),
                                         GestureDetector(
                                           onTap: (){
                                             setState(() {
                                               color=false;
                                             });
                                           },
                                           child: Container(
                                             alignment: Alignment.center,
                                             width: Get.width*.2,
                                             height: 40,
                                             color: color?Colors.grey.shade300:Colors.orange,
                                             child: Text('Round Trip',style: TextStyle(
                                                 color: Colors.black54,
                                                 fontSize: 13
                                             ),),
                                           ),
                                         ),
                                       ],
                                     ),
                                     width: Get.width*.4,
                                     height: 40,
                                   )
                                 ],
                               ),
                               SizedBox(height: Get.height*.02,),
                               TextFormField(
                                 onSaved: (val){
                                   from=val;
                                 },
                                 onChanged: (val){
                                   from=val;
                                 },
                                 decoration: InputDecoration(
                                   hintText: '$hint_from',
                                   prefixIcon: Icon(Icons.location_on_outlined),
                                   suffixIcon: DropdownButton(
                                     icon: Icon(Icons.keyboard_arrow_down_outlined),
                                     value: _value,
                                     underline: SizedBox(height: 1,width: .005,),
                                     items: city_from.map((dynamic item) {
                                       return DropdownMenuItem<dynamic>(
                                         child: Text('$item'),
                                         value: item,
                                       );
                                     }).toList(),
                                     onChanged: (dynamic value) {
                                       setState(() {
                                         _value =value ;
                                         hint_from=value;
                                         from=value;
                                       });
                                     },
                                   ),
                                 ),
                               ),
                               SizedBox(height: Get.height*.02,),
                               TextFormField(
                                   onSaved: (val){
                                         to=val;
                                         },
                                 onChanged: (val){
                                         to=val;
                                         },
                                 decoration: InputDecoration(
                                   hintText: '$hint_to',
                                   prefixIcon: Icon(Icons.location_on),
                                   suffixIcon: DropdownButton(
                                     icon: Icon(Icons.keyboard_arrow_down_outlined),
                                     value: _valueTo,
                                     underline: SizedBox(height: 1,width: .005,),
                                     items: city_from.map((dynamic item) {
                                       return DropdownMenuItem<dynamic>(
                                         child: Text('$item'),
                                         value: item,
                                       );
                                     }).toList(),
                                     onChanged: (dynamic value) {
                                       setState(() {
                                         _valueTo =value ;
                                         hint_to=value;
                                         to=value;
                                       });
                                     },
                                   ),
                                 ),
                               ),
                               SizedBox(height: Get.height*.02,),
                               TextFormField(
                                 decoration: InputDecoration(
                                   hintText: '$hintDate',
                                   prefixIcon: Icon(Icons.date_range),
                                   suffixIcon: GestureDetector(
                                       onTap: (){
                                         _selectDate(context);
                                       },
                                       child: Icon(Icons.keyboard_arrow_down_rounded,size: 30,))
                                 ),
                               ),
                               SizedBox(height: Get.height*.02,),
                              color==false? TextFormField(
                                 decoration: InputDecoration(

                                   hintText: '$hintDate2',
                                   hintStyle: TextStyle(
                                     color: Colors.grey[400],
                                   ),
                                   prefixIcon: Icon(Icons.date_range,color: Colors.grey[400],),
                                     suffixIcon: GestureDetector(
                                         onTap: (){
                                           _selectDate2(context);
                                         },
                                         child: Icon(Icons.keyboard_arrow_down_rounded,size: 30,))
                                 ),
                               ):Container(
                                height: Get.height*.05,
                              ),
                               SizedBox(height: Get.height*.02,),
                               ElevatedButton(onPressed: (){
                                     Get.to(Screen10(
                                       from: from,
                                       to: to,
                                       date: hintDate,
                                       date2: hintDate2,
                                     ));
                               },
                                   style: ElevatedButton.styleFrom(
                                       primary:mainColor
                                   ),
                                   child: Text('SEARCH',style: TextStyle(
                                       fontSize: 20,
                                   ),)),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),

                 Text('WHAT WE OFFER',style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     color: Colors.teal[200]
                 ),),
                 Text('SEE WHAT WE CAN DO FOR YOU',style: TextStyle(
                     fontSize: 19,
                   color: Colors.black54
                 ),),
             Container(
               height: Get.height*.5,
               width: Get.width,
               child: GridView.builder(
               itemCount: 4,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                 crossAxisSpacing: 5,
                 mainAxisSpacing: 5
               ),
               itemBuilder: (BuildContext context, int index){
                 return Container(
                   margin: EdgeInsets.all(10),
                     height: Get.height*.25,
                     width: Get.width*.4,
                     child: Image.asset('${images[index]}',fit: BoxFit.fill,));
               },
           ),
             ),
                 SizedBox(height: Get.height*.035,),

                 Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   ElevatedButton(onPressed: (){},
                       child: Text('READ MORE',style: TextStyle(fontSize: 16,color: Colors.black),),
                     style: ElevatedButton.styleFrom(
                       fixedSize: Size.fromWidth(Get.width*.42),
                       primary: Colors.white
                     ),
                   ) ,
                   ElevatedButton(onPressed: (){
                     Get.to(Screen8());
                   },
                       child: Text('OUR SERVICES',style: TextStyle(fontSize: 16),),
                     style: ElevatedButton.styleFrom(
                       fixedSize: Size.fromWidth(Get.width*.42),
                       primary: mainColor
                     ),
                   ),

                 ],
               ),
                 SizedBox(height: Get.height*.035,),

                 Stack(
                   alignment: Alignment.bottomCenter,
                   children: [
                     Container(
                       width: Get.width,
                       height: Get.height*.62,
                       color: Colors.teal[50],
                       child: Column(
                         children: [
                           SizedBox(height: Get.height*.015,),

                           Text('WHY CHOOSE US',style: TextStyle(fontSize: 24,color: secondColor,
                           fontWeight: FontWeight.bold
                           )), Text('SEE WHAT WE CAN DO FOR YOU',style: TextStyle(fontSize: 13,color:Colors.black54,
                           )),
                           SizedBox(height: Get.height*.035,),
                           Image.asset('images2/hand.png'),
                           SizedBox(height: Get.height*.01,),
                           Text('quis nostrud exercitation ullamco laboris nisi\n ut aliquip',
                               style: TextStyle(fontSize: 14,color:Colors.black54,
                               fontWeight: FontWeight.bold
                           )),
                           SizedBox(height: Get.height*.035,),
                           Image.asset('images2/qrcode (1).png'),
                           SizedBox(height: Get.height*.01,),
                           Text('commodo consequat. Duis aute irure dolor in\n reprehenderit in voluptat',
                               style: TextStyle(fontSize: 14,color:Colors.black54,
                               fontWeight: FontWeight.bold
                           )),
                           SizedBox(height: Get.height*.035,),
                           Stack(
                             alignment: Alignment.center,
                             children: [
                               Image.asset('images2/analitic.png'),
                               Image.asset('images2/analitic2.png'),
                             ],
                           ),
                           SizedBox(height: Get.height*.01,),
                           Text('Excepteur sint occaecat cupidatat non proident,\n sunt in culpa',
                               style: TextStyle(fontSize: 14,color:Colors.black54,
                               fontWeight: FontWeight.bold
                           )),
                           SizedBox(height: Get.height*.035,),
                           Icon(Icons.alarm,color: secondColor,),
                           SizedBox(height: Get.height*.01,),
                           Text('sunt in culpa qui officia deserunt mollit\n anim id est laborum.',
                               style: TextStyle(fontSize: 14,color:Colors.black54,
                                   fontWeight: FontWeight.bold
                               )),
                         ],
                       ),
                     ),


                   ],
                 ),
                 Stack(
                   alignment: Alignment.topCenter,
                   children: [
                     Container(
                       width: Get.width,
                       height: 40,
                     ), Container(
                       width: Get.width,
                       height: 40,
                       color: Colors.teal[50],
                     ),
                     CircleAvatar(
                       radius: 45,
                       backgroundColor: Colors.white,
                       backgroundImage: AssetImage('images2/avatar.png'),
                     )
                   ],
                 ),
                 Text('quis nostrud exercitation ullamco laboris nisi\n ut aliquip ex labore et dolore magna\n aliqua ea commodo',
                     style: TextStyle(fontSize: 14,color:Colors.black54,
                         fontWeight: FontWeight.bold
                     )),
                 Text('- Martina -',style: TextStyle(fontSize: 24,color: secondColor,
                 )),
                 SizedBox(height: Get.height*.035,),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(width: Get.width*.13,
                     height:3,
                       color: mainColor,
                     ),
                     SizedBox(width:3),
                     Container(width: Get.width*.13,
                     height:3,
                       color: Colors.grey[300],
                     ),
                     SizedBox(width:3),
                     Container(width: Get.width*.13,
                     height:3,
                       color: Colors.grey[300],
                     ),
                     SizedBox(width:3),
                     Container(width: Get.width*.13,
                     height:3,
                       color: Colors.grey[300],
                     ),
                     SizedBox(width:3),
                     Container(width: Get.width*.13,
                     height:3,
                       color: Colors.grey[300],
                     ),
                   ],
                 ),
                 SizedBox(height: Get.height*.035,),
                 Stack(
                   alignment: Alignment.topLeft,
                   children: [
                     Container(
                       alignment: Alignment.topLeft,
                       child: Image.asset('images2/Group 37.png'),
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 20,top: 25
                           ),
                           child: Text('Lorem ipsum',style: TextStyle(
                             fontSize: 20,color: Colors.white
                           ),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 20,top: 20),
                           child: Text('sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut ore magna aliqua excepteur sint.',style: TextStyle(
                             fontSize: 14,color: Colors.white
                           ),),

                         ),
                         Container(
                           alignment: Alignment.bottomRight,
                           child: ElevatedButton(
                             onPressed: (){
                               Get.to(Screen8());
                             },
                             style: ElevatedButton.styleFrom(
                               primary: mainColor
                             ),
                             child: Text('OUR SERVICES'),
                           ),
                         )
                       ],
                     )
                   ],
                 ),
                 SizedBox(height: Get.height*.035,),


                 Text('COOPERATE WITH',style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     color: Colors.teal[100]
                 ),),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Image.asset('images2/Image 34.png',width: Get.width*.3,height: Get.height*.1,),
                     SizedBox(width: Get.width*.07,),

                     Image.asset('images2/Image 3.png',width: Get.width*.3,height: Get.height*.1,),

                   ],
                 ),
                 Image.asset('images2/Image 35.png',width: Get.width*.8,height: Get.height*.18,),
                 Stack(
                   children: [
                     Container(
                   width: Get.width,
                   height: Get.height*.6,
                       child: Image.asset('images2/Rectangle 243.png',fit: BoxFit.fill,),
                     ),
                     Container(
                       padding: EdgeInsets.only(left: 10),
                       width: Get.width,
                       height: Get.height*.6,
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(height: Get.height*.02,),
                           Text('ABOUT US',style: TextStyle(
                               fontSize: 19,
                               color: Colors.white
                           ),),
                           SizedBox(height: Get.height*.02,),

                           Text(' commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',style: TextStyle(
                               fontSize: 14,
                               color: Colors.white
                           ),),
                           SizedBox(height: Get.height*.02,),

                           Container(
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.start,
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
                           ),
                           SizedBox(height: Get.height*.02,),

                           Text('NEED HELP',style: TextStyle(
                               fontSize: 19,
                               color: Colors.white
                           ),),
                           SizedBox(height: Get.height*.02,),

                           Text('Contact us',style: TextStyle(
                               fontSize: 16,
                               color: Colors.white
                           ),),
                           SizedBox(height: Get.height*.02,),

                           Row(
                             children: [
                               Icon(Icons.call,color: Colors.white,),
                               Text('+233333333',style: TextStyle(
                                   fontSize: 14,
                                   color: Colors.white
                               ),),
                             ],
                           ),
                           SizedBox(height: Get.height*.015,),

                           Row(
                             children: [
                               Icon(Icons.email_outlined,color: Colors.white,),
                               Text('superservice@gmail.com',style: TextStyle(
                                   fontSize: 14,
                                   color: Colors.white
                               ),),
                             ],
                           ),
                           SizedBox(height: Get.height*.08,),
                           Row(
                             children: [
                               Icon(Icons.remove_circle_outline,color: Colors.white,),
                               Text(' All right reserve |ModernSuperjetService 2021',style: TextStyle(
                                   fontSize: 12,
                                   color: Colors.white
                               ),),
                               GestureDetector(
                                 onTap: (){
                                   void _reload([value]) {
                                     setState(() {});
                                   }
                                   Navigator.of(context)
                                       .push(MaterialPageRoute(builder: (context) => Screen1()))
                                       .then((value) => _reload(value));
                                 },
                                 child: Icon(Icons.arrow_circle_up,color: Colors.white,
                                   size:50,),
                               )
                             ],
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),

               ]),
    ),
    );
  }
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(

        context: context,
        initialDate: currentDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
        hintDate=currentDate;
      });
  }
  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(

        context: context,
        initialDate: currentDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
        hintDate2=currentDate;
      });
  }
}
