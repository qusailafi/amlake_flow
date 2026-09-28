

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../data/local/cache_data.dart';
 import '../../generated/l10n.dart';
import '../../utils/color_helper.dart';
import '../../utils/utils.dart';
 import 'package:fluttertoast/fluttertoast.dart';

import '../splash/splash_page.dart';

void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 2,
    backgroundColor: Colors.black87,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
void showMyBottomSheet(BuildContext context,String txt) {
  Get.bottomSheet(
    Container(width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
         txt,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: ColorHelper.primaryColor),
          ),
          SizedBox(height: 12),
          Padding(
            padding:   EdgeInsets.symmetric(horizontal:24, vertical: 14),
            child: Opacity(
              opacity: 0.7,
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorHelper.tertiryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                    },
                  child:   Text(
                    S.of(context).close,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

         ],
      ),
    ),
    isDismissible: true,
    enableDrag: true,
    backgroundColor: Colors.transparent,
  );
}
Widget myBottomSheet(BuildContext context, String txt) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(12),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          txt,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: ColorHelper.primaryColor,
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          child: Opacity(
            opacity: 0.7,
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorHelper.tertiryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () => Get.back(),
                child: Text(
                  S.of(context).close,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
void createPopUp(BuildContext context,String txt) async{
  Get.bottomSheet(
    Container(width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            txt,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: ColorHelper.primaryColor),
          ),
          SizedBox(height: 12),
          Padding(
            padding:   EdgeInsets.symmetric(horizontal:24, vertical: 14),
            child: Opacity(
              opacity: 0.7,
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorHelper.tertiryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: ()async {
                    await Utils.clearSharedPrefs();
                    await CacheDataManager.putBooleanData(Utils.IS_LOGIN, false);
                    Get.offAll(SplashPage());
                  },
                  child:   Text(
                    S.of(context).login,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    ),
    isDismissible: false,
    enableDrag: false,
    backgroundColor: Colors.transparent,
  );
}

void unAuthPopUp(BuildContext context,String txt) async{
  Get.bottomSheet(
    Container(width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            txt,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: ColorHelper.primaryColor),
          ),
          SizedBox(height: 12),
          Padding(
            padding:   EdgeInsets.symmetric(horizontal:24, vertical: 14),
            child: Opacity(
              opacity: 0.7,
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorHelper.tertiryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: ()async {
                    await Utils.clearSharedPrefs();
                    await CacheDataManager.putBooleanData(Utils.IS_LOGIN, false);
                    Get.offAll(SplashPage());
                  },
                  child:   Text(
                    S.of(context).login,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    ),
    isDismissible: false,
    enableDrag: false,
    backgroundColor: Colors.transparent,
  );
}
void unAuthPopUpLogin(BuildContext context,String txt) async{
  Get.bottomSheet(
    Container(width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            txt,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: ColorHelper.primaryColor),
          ),
          SizedBox(height: 12),
          Padding(
            padding:   EdgeInsets.symmetric(horizontal:24, vertical: 14),
            child: Opacity(
              opacity: 0.7,
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorHelper.tertiryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: ()async {
                    await Utils.clearSharedPrefs();
                    await CacheDataManager.putBooleanData(Utils.IS_LOGIN, false);
                    // Get.offAll(SplashPage());
                    Get.back();
                  },
                  child:   Text(
                    S.of(context).login,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    ),
    isDismissible: false,
    enableDrag: false,
    backgroundColor: Colors.transparent,
  );
}

