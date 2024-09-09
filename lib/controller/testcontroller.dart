import 'package:flower_shop/core/class/statusrequest.dart';
import 'package:flower_shop/core/data/remote/testdata.dart';
import 'package:get/get.dart';
import 'package:flower_shop/core/function/handlingdata.dart';

class Testcontroller extends GetxController {
  Testdata testdata = Testdata(Get.find());
  List data = [];
  late StatusRequest statusRequest;
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = testdata.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      data.addAll(response[0]);
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
