
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/local/cache_data.dart';
import '../presentation/splash/splash_page.dart';

class Utils {
  static String BASE_URL = "https://tafseerruyaapi.tryasp.net/api/";
  static String IMAGE_PATH = "https://tafseerruyaapi.tryasp.net";
  static String TOKEN = "token";



  static String LANGUAGE = "language";
  static String IS_LOGIN = "IS_LOGIN";

  static String language = "ar";

  static String notInterstedIds = "";
  static String currentLang = "en";





  static Future<void> changeLanguage(
      BuildContext context, Locale newLocale) async {
    Get.updateLocale(newLocale);

    Get.offAll(() => Localizations.override(
      context: context,
      locale: newLocale,
      child: SplashPage(),
    ));
  }

  static String getImgePath(String imgName) {
    return "images/" + imgName;
  }
  static Future<Map<String, String>> getCommonHeaderWithoUTAuth() async {
    Map<String, String> headers = {};
    String token = await CacheDataManager.getStringData(
      Utils.TOKEN,
    );
    String lang = await CacheDataManager.getStringData(
      Utils.LANGUAGE,
    );

    headers["x-Language"] = lang;
    headers["Content-Type"]="application/json";

    return headers;
  }

  static Future<Map<String, String>> getCommonHeaderWithAuth() async {
    Map<String, String> headers = {};
    String token = await CacheDataManager.getStringData(
      Utils.TOKEN,
    );
    String lang = await CacheDataManager.getStringData(
      Utils.LANGUAGE,
    );
if(token.isNotEmpty)
    headers["Authorization"] = "Bearer $token";
    headers["x-Language"] = lang;
    headers["Content-Type"]="application/json";
    return headers;
  }
  static Future<void> clearSharedPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
  static Future<Map<String, String>> commonHeaderWithOutAuth() async {
    String lang = await CacheDataManager.getStringData(
      Utils.LANGUAGE,
    );

    Map<String, String> headers = {};

    headers["x-Language"] = lang;

    return headers;
  }
}
