 import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../generated/l10n.dart';
import '../../../utils/error_type.dart';
import '../../common/controllers/base_controller.dart';

class NetWorkErrorControler extends BaseControler {
  RxString errorMsg = "".obs;

late BuildContext context;
 String  getErrorMsg(ErrorType error ) {
    if (error == ErrorType.badRequest) {
      errorMsg.value = S.of(context).general_error;
    } else if (error == ErrorType.unauthorized) {
      errorMsg.value = S.of(context).general_error;
    } else if (error == ErrorType.serverError) {
      errorMsg.value = S.of(context).general_error;
    }
    else if (error ==ErrorType.notFound){
      errorMsg.value = S.of(context).not_found_api;

    }

    return errorMsg.value;
  }
}
