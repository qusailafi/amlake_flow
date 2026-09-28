
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import '../../common/controllers/language/language_controler.dart';
import '../../domain/errors/error_controler.dart';
import '../../utils/utils.dart';

class SplashPage  extends StatefulWidget{
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashState();
}

class _SplashState extends State<SplashPage> {
  late NetWorkErrorControler netWorkErrorControler;

  @override
  void initState()  {
    super.initState();
    netWorkErrorControler = Get.find<NetWorkErrorControler>();
    CacheControler controler = Get.find();

    controler.isLogined();
  }

  @override
  Widget build(BuildContext context) {
    netWorkErrorControler.context = context;
    return Container(color: Color(0xFF030A1D),
      child: Image.asset(
        Utils.getImgePath("app_icon.png"),

        // Utils.getImgePath("briks.gif"),
        // fit: BoxFit.fill,
      ),
    );
  }
}
