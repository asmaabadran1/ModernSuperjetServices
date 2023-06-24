import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suuperjet/constants.dart';
import 'package:suuperjet/view/screen16.dart';

class Screen14 extends StatelessWidget {
  TextEditingController cardController =TextEditingController();
  TextEditingController mdController =TextEditingController();
  TextEditingController ccvController =TextEditingController();
  TextEditingController doController =TextEditingController();
  String? from;
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  String? to;
  dynamic date;
  dynamic date2;
  Screen14({this.to,this.from,this.date,this.date2});
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController phone=TextEditingController();
  String? name2 ='NAME';
  String? email2 ='EMAIL';
  String? phone2 ='PHONE NUMBER';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       padding: EdgeInsets.only(left: 15),
       width: double.infinity,
       child: SingleChildScrollView(
         child: Form(
           key: formKey,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               SizedBox(height: Get.height*.08,),
               Text('FILL OUT THE APPLICATION TO GET TICKET',style: TextStyle(
                   fontSize:16.5,
                 color: secondColor
               ),),
               SizedBox(height: Get.height*.03,),
               Image.asset('products/Group 61.png'),
               SizedBox(height: Get.height*.03,),

               Container(
                 alignment: Alignment.topLeft,
                 child: Text('TICKET 1',style: TextStyle(
                     fontSize:18.5,
                     color: Colors.black45
                 ),),

               ),
               SizedBox(height: Get.height*.03,),
                TextFormField(
                  controller: name,
                  onSaved: (val){
                    name.text=val!;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: '$name2',
                    prefixIcon:  Image.asset('products/star.png',height: 2,))

                ) ,SizedBox(height: Get.height*.03,),
                TextFormField(
                  controller: email,
                  onSaved: (val){
                    email.text=val!;
                  },
                    keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: '$email2',
                    prefixIcon:  Image.asset('products/star.png',height: 2,))

                ) ,SizedBox(height: Get.height*.03,),
                TextFormField(
                  controller: phone,
                  onSaved: (val){
                    phone.text=val!;
                  },
                    keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: '$phone2',
                    prefixIcon:  Image.asset('products/star.png',height: 2,))

                )
               ,SizedBox(height: Get.height*.03,),
               Row(
                 children: [
                   Image.asset('products/star.png',height:20,width: 25,),
                   Text('UPLOAD YOUR PICTURE ',style: TextStyle(
                       fontSize:18.5,
                       color: Colors.black45
                   ),),

                 ],
               ),
               Container(
                 alignment: Alignment.topLeft,
                 child: ElevatedButton(onPressed: (){},
                     style: ElevatedButton.styleFrom(
                         primary: mainColor
                     ),
                     child: Text('UPLOAD')),
               ),

               SizedBox(height: Get.height*.03,),
               Container(
                 alignment: Alignment.topLeft,
                 child: Text('TICKET 2',style: TextStyle(
                     fontSize:18.5,
                     color: Colors.black45
                 ),),

               ),
               SizedBox(height: Get.height*.03,),
               TextFormField(
                   keyboardType: TextInputType.name,
                   decoration: InputDecoration(

                       hintText: 'NAME',
                       prefixIcon:  Image.asset('products/star.png',height: 2,))

               ) ,SizedBox(height: Get.height*.03,),
               TextFormField(
                   keyboardType: TextInputType.emailAddress,
                   decoration: InputDecoration(
                       hintText: 'EMAIL',
                       prefixIcon:  Image.asset('products/star.png',height: 2,))

               ) ,SizedBox(height: Get.height*.03,),
               TextFormField(
                   keyboardType: TextInputType.phone,
                   decoration: InputDecoration(
                       hintText: 'PHONE NUMBER',
                       prefixIcon:  Image.asset('products/star.png',height: 2,))

               )
               ,SizedBox(height: Get.height*.03,),
               Row(
                 children: [
                   Image.asset('products/star.png',height:20,width: 25,),
                   Text('UPLOAD YOUR PICTURE ',style: TextStyle(
                       fontSize:18.5,
                       color: Colors.black45
                   ),),

                 ],
               ),
               Container(
                 alignment: Alignment.topLeft,
                 child: ElevatedButton(onPressed: (){},
                     style: ElevatedButton.styleFrom(
                         primary: mainColor
                     ),
                     child: Text('UPLOAD')),
               ),
               SizedBox(height: Get.height*.03,),
               Row(
                 children: [
                   Image.asset('products/star.png',height:20,width: 25,),
                   Text('SELECT PAYMENT TYPE ',style: TextStyle(
                       fontSize:18.5,
                       color: Colors.black45
                   ),),

                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Image.asset('products/fawry.png',width: Get.width*.25,height: 40,),
                   Image.asset('products/meza.png',width: Get.width*.25,height: 40,),
                   Image.asset('products/master.png',width: Get.width*.3,height: 50,),

                 ],
               ),
               SizedBox(height: Get.height*.03,),
               TextFormField(
                 keyboardType: TextInputType.number,
                   onSaved: (val){
                     cardController.text=val!;
                   },
                   validator: (val){
                     if(val ==null || val.isEmpty){
                       return 'card is empty';
                     }
                   },
                   decoration: InputDecoration(
                       hintText: 'Card Number',
                       prefixIcon:  Image.asset('products/star.png',height: 2,))

               ) ,SizedBox(height: Get.height*.03,),
               TextFormField(
                   keyboardType: TextInputType.number,

                   onSaved: (val){
                     mdController.text=val!;
                   },
                   validator: (val){
                     if(val ==null || val.isEmpty){
                       return 'md is empty';
                     }
                   },
                   decoration: InputDecoration(
                       hintText: 'M/D',
                       prefixIcon:  Image.asset('products/star.png',height: 2,))

               ) ,SizedBox(height: Get.height*.03,),
               TextFormField(
                   keyboardType: TextInputType.number,

                   onSaved: (val){
                     ccvController.text=val!;
                   },
                   validator: (val){
                     if(val ==null || val.isEmpty){
                       return 'ccv is empty';
                     }
                   },
                   decoration: InputDecoration(
                       hintText: 'CCV',
                       prefixIcon:  Image.asset('products/star.png',height: 2,))

               ), SizedBox(height: Get.height*.03,),
               TextFormField(
                   keyboardType: TextInputType.number,

                   onSaved: (val){
                     doController.text=val!;
                   },
                   validator: (val){
                     if(val ==null || val.isEmpty){
                       return 'do is empty';
                     }
                   },
                   decoration: InputDecoration(
                       hintText: 'DO YOU HAVE APROMOTIONAL CODE',
                       prefixIcon:  Image.asset('products/star.png',height: 2,))

               ),
               SizedBox(height: Get.height*.03,),
               Container(
                 width: double.infinity,
                 height: Get.height*.08,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Text('TOTAL  350 EGP ',style: TextStyle(
                         fontSize:18.5,
                         color: Colors.black45
                     ),),
                     ElevatedButton(
                         onPressed: (){
                           if (formKey.currentState!.validate()) {
                             Get.defaultDialog(
                                 title: '',
                                 content:Container(
                                   width: Get.width,
                                   height: Get.height*.25,
                                   child: Column(
                                     children: [
                                       Image.asset('products/Group 30.png'),
                                       SizedBox(height: Get.height*.01,),
                                       Text('submittion succeeded ',style: TextStyle(
                                           fontSize:18.5,
                                           color: Colors.black45
                                       ),),
                                       SizedBox(height: Get.height*.02,),
                                       ElevatedButton(onPressed: (){
                                         if (formKey.currentState!.validate()) {
                                           ScaffoldMessenger.of(context).showSnackBar(
                                             SnackBar(content: Text('Done')),
                                           );
                                           Get.to(Screen16(
                                             from: from,
                                             to: to,
                                             date: date,
                                             date2: date2,
                                             name: name,
                                             phone: phone,
                                             email: email,
                                           ));
                                         }

                                       },
                                           style: ElevatedButton.styleFrom(
                                               primary: mainColor
                                           ),
                                           child: Text('VIEW TICKET')),
                                     ],
                                   ),
                                 ) );
                           }

                     },
                         style: ElevatedButton.styleFrom(
                             primary: mainColor
                         ),
                         child: Text('SUBMIT')),
                   ],
                 ),
               )
             ],
           ),
         ),
       ),
     ),
    );
  }
}
