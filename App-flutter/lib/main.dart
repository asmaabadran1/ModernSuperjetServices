import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:suuperjet/view/auth/sign_in.dart';
import 'package:suuperjet/view/screen10.dart';
import 'package:suuperjet/view/screen12.dart';
import 'package:suuperjet/view/screen16.dart';
import 'package:suuperjet/view/screen3.dart';
import 'package:suuperjet/view/screen5.dart';
import 'package:suuperjet/view/screen6.dart';
import 'package:suuperjet/view/screen8.dart';

import 'view/screen1.dart';
import 'view/screen11.dart';
import 'view/screen13.dart';
import 'view/screen14.dart';
import 'view/screen17.dart';
import 'view/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
