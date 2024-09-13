import 'package:flower_shop/core/class/statusrequest.dart';
import 'package:flower_shop/core/constant/app_routes.dart';
import 'package:flower_shop/core/data/remote/auth/confirmdata.dart';
import 'package:flower_shop/core/data/remote/auth/resend2facode.dart';
import 'package:flower_shop/core/function/handlingdata.dart';
import 'package:flower_shop/core/services/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class Confirmcodecontroller extends GetxController {
  goToBottom(String confirmcode);
  resend2facode();
}

class ConfirmcodecontrollerImp extends Confirmcodecontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  Confirmdata confirmdata = Confirmdata(Get.find());

  Resend2facodeData resend2facodeData = Resend2facodeData(Get.find());
  String? email;
  var otp = ''.obs;
  StatusRequest? statusRequest;
  final List<TextEditingController> textcontrollers =
      List.generate(6, (index) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());

  void handleOtpChange(String value, int index) {
    if (value.length == 1 && index < 3) {
      otp.value += value;
    } else if (value.isEmpty && index > 0) {}
  }

  String getOtp() {
    return textcontrollers.map((controller) => controller.text).join("");
  }

  @override
  goToBottom(String confirmcode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await confirmdata.postData(email!, confirmcode);
    print(response);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['success']) {
        await MyServices.setdata(key: 'token', value: response['access_token']);

        print(response['access_token']);
        Get.offNamed(AppRoutes.bottomNavbar);
      } else {
        Get.defaultDialog(
            title: "Warning", middleText: response['message'].toString());
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  resend2facode() async {
    statusRequest = StatusRequest.loading;

    var response = await resend2facodeData.postData(email!);
    print(response);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['success']) {
        Get.defaultDialog(
            title: "Warning", middleText: 'please check your email');
      } else {
        Get.defaultDialog(title: "Warning", middleText: 'error');
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  void onClose() {
    // Dispose controllers and focus nodes when the controller is closedBmwm3@e94
    for (var controller in textcontrollers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.onClose();
  }
}
