 import 'package:amlake_flow_app/presentation/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'common/controllers/language/language_controler.dart';
 import 'domain/errors/error_controler.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheControler controler = Get.put(CacheControler());
  Get.put(NetWorkErrorControler());
  await controler.loadLang();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final CacheControler controler = Get.find<CacheControler>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      // Rebuild app if locale changes
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,

        theme: ThemeData(
          textTheme: GoogleFonts.cairoTextTheme(),
        ),
        locale: Locale(controler.local.value),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("en", ""),
          Locale("ar", ""),
        ],
        home: const SplashPage(),
      );
    });
  }
}