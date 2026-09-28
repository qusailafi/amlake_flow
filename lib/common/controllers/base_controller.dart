

import 'package:get/get.dart';

import '../../../../data/remote/request_manger.dart';

class BaseControler extends GetxController{
  RxBool isLoading=false.obs;
  RxString message="".obs;


  @override
  void dispose() {
    Get.delete<BaseControler>();
    super.dispose();
  }
}