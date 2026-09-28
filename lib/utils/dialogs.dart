

import 'dart:ui';

 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../presentation/splash/splash_page.dart';


// import '../presentation/ui/splash.dart';

class DialogHelper{




  static void logoutDialog(String title,String body,Color backGroundColor,Color buttonColor){
    Get.defaultDialog(
      title: title,
      middleText: body,
      backgroundColor:backGroundColor,
      buttonColor: buttonColor,
      onConfirm: (){

        Get.offAll(SplashPage());

      },

      content: Text("logout",style: TextStyle(color: Colors.black),),
      confirmTextColor: Colors.white,
      titleStyle: TextStyle(color: Colors.black),

      middleTextStyle: TextStyle(color: Colors.black),

    );
  }
}