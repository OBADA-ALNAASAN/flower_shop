import 'package:flower_shop/core/class/statusrequest.dart';
import 'package:flower_shop/core/constant/app_constan.dart';
import 'package:flower_shop/core/constant/app_routes.dart';
import 'package:flower_shop/core/data/remote/auth/logoutdata.dart';
import 'package:flower_shop/core/function/handlingdata.dart';
import 'package:flower_shop/core/services/services.dart';

import 'package:get/get.dart';

abstract class Settingcontroller extends GetxController {
  logout();
}

class SettingcontrollerImp extends Settingcontroller {
  Logoutdata logOutData = Logoutdata(Get.find());

  StatusRequest? statusRequest;
  @override
  logout() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await logOutData.postData(token!);
    print(response);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['success']) {
        Get.offNamed(AppRoutes.loginScreen);
      await  MyServices.sharedPreferences.remove('token');
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: "The identifier field is required");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
