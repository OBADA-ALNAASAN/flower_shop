import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  static late SharedPreferences sharedPreferences;
  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

 static Future<bool> setdata({required String key, required String value}) async {
    return await sharedPreferences.setString(key, value);
  }
 static Future<bool> deletData({required String key}) async {
    return await sharedPreferences.remove(key);
  }
 static String getData({required String key})  {
    return  sharedPreferences.getString(key)??"";
  }
}

initialServices() async {
  await Get.putAsync(
    () => MyServices().init(),
  );
}
