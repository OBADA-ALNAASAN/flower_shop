import 'package:flower_shop/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;
  MyServices services = Get.find();
  changLanguage(String langCode) {
    Locale locale = Locale(langCode);
    MyServices.sharedPreferences.setString('lang', langCode);

    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sherdpreflang = MyServices.sharedPreferences.getString('lang');
    if (sherdpreflang == "ar") {
      language = const Locale("ar");
    }else if(sherdpreflang == "en"){
language = const Locale("en");
    }else{
      language=Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
