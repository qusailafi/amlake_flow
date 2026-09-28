import 'dart:async';
import 'dart:ui';
  import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
 import '../../../../data/local/cache_data.dart';
import '../../../../utils/utils.dart';
import '../base_controller.dart';


class CacheControler extends BaseControler {
  RxString local = "ar".obs;

  RxBool isLogin = false.obs;
  RxBool isInterPetor = false.obs;

  RxString token = "".obs;
  RxString userName = "".obs;
  RxString pass = "".obs;

  RxString countryCode = "".obs;

  isLogined() async {
    isLogin.value = await CacheDataManager.getBoolean(Utils.IS_LOGIN);
     token.value=   await CacheDataManager.getStringData(
      Utils.LANGUAGE,
    );
    Timer(Duration(seconds: 8), () async {
      // if(isLogin.value)
           // Get.offAll(InterDreamCard());

      // else
      //   Get.offAll(LoginPage());
// if(isLogin.value)
//   if(isInterPetor.value)
//       Get.offAll(InterDreamCard());
// else
//     Get.offAll(CustomBottomButtonsScreen());
//
// else
//   Get.offAll(LoginPage());


    });
  }

  Future<Locale> loadLang() async {
    local.value = await CacheDataManager.getStringData(Utils.LANGUAGE);
    Utils.language = local.value;
    if (local.value.isNull || local.value.isEmpty) {
      local.value = "ar";
      Utils.language = "ar";
    }
    return Locale(local.value);
  }

  Future<void> setLang(BuildContext context) async {
    if (local.value == "en")
      await CacheDataManager.putStringData(Utils.LANGUAGE, "ar");
    else
      await CacheDataManager.putStringData(Utils.LANGUAGE, "en");

    local.value = await CacheDataManager.getStringData(Utils.LANGUAGE);

    Utils.changeLanguage(context, Locale(local.value));
  }
}
