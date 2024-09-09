import 'package:flower_shop/core/class/statusrequest.dart';
import 'package:flower_shop/core/constant/app_routes.dart';
import 'package:flower_shop/core/data/remote/auth/logindata.dart';
import 'package:flower_shop/core/function/handlingdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Logincontroller extends GetxController {
  login();
  goToSignUp();
}

class LogincontrollerImp extends Logincontroller {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phonenumber;
  LoginData loginData = LoginData(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  @override
  login() async {
    statusRequest = StatusRequest.loading;
    var response = await loginData.postData(email.text, password.text);
    print(response);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['success']==false) {
        Get.offNamed(AppRoutes.bottomNavbar);
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: "The identifier field is required");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phonenumber = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phonenumber.dispose();
    super.dispose();
  }
}
