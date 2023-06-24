import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suuperjet/constants.dart';

class Screen6 extends StatelessWidget {
   String? image;
  Screen6({this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_outlined,size: 30,color: secondColor,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: Get.height*.04),
                child: Image.asset('images/discount.png')) ,
            Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text('15% DISCOUNT',style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: mainColor
                    ),),
                    Text('Get a promotional code',style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                    ),),
                  ],
                )),
            SizedBox(height: Get.height*.04,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum',style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54
              ),),
            ),
            SizedBox(height: Get.height*.03,),
            Container(
                width: Get.width*.9,
                height: Get.height*.29,
                child: Image.asset('$image',fit: BoxFit.fill,)),
            Container(
              margin: EdgeInsets.only(top: 8,left: 8,right: 8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
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
                      Text('From',style: TextStyle(color: Colors.black54,fontSize: 13),),
                      Text('Cairo',style: TextStyle(color: Colors.black54,fontSize: 12),),
                      Text('02:10 pm',style: TextStyle(color: Colors.black54,fontSize: 12),)
                    ],
                  ),
                  Column(
                    children: [
                      Text('To',style: TextStyle(color: Colors.black54,fontSize: 13),),
                      Text('Aswan',style: TextStyle(color: Colors.black54,fontSize: 12),),
                      Text('04.30 pm',style: TextStyle(color: Colors.black54,fontSize: 12),),
                    ],
                  ), Column(
                    children: [
                      Text('Date',style: TextStyle(color: Colors.black54,fontSize: 13),),
                      Text('12 oct',style: TextStyle(color: Colors.black54,fontSize: 12),),
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text('100 EGP',style: TextStyle(color: Colors.black54,fontSize: 13),),
                          Text('for aseat',style: TextStyle(color: Colors.black54,fontSize: 13),),
                          ElevatedButton(onPressed: (){},
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
            ),
          ],
        ),
      ),
    );
  }
}
