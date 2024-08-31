import 'package:flower_shop/constant/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.darkgray,
    primaryColor: AppColors.darkgray,
  );
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColors.blue,
    primaryColor: Colors.white,
  
   
  );
}
// (){
//   if(Get.isDarkMode){
//     Get.changeTheme(AppTheme.customLightTheme);
//   }else{
//     Get.changeTheme(AppTheme.customDarkTheme);
//   }
// }