import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  var otp = ''.obs;
  final List<TextEditingController> textcontrollers =
        List.generate(6, (index) => TextEditingController());
    final List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());

  void handleOtpChange(String value, int index) {
    if (value.length == 1 && index < 3) {
      otp.value += value;
    } else if (value.isEmpty && index > 0) {
    }
  }
  List<String> getOtp() {
    // Retrieve the text values from the controllers
    return textcontrollers.map((controller) => controller.text).toList();
  }

  @override
  void onClose() {
    // Dispose controllers and focus nodes when the controller is closed
    for (var controller in textcontrollers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.onClose();
  }
}
