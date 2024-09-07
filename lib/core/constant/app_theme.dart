import 'package:flower_shop/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColors.dark,
      primaryColor: AppColors.dark,
      secondaryHeaderColor: const Color(0xffD8E8E8),
      textTheme: const TextTheme(
        bodySmall: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: AppColors.whitepin,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14,
          color: AppColors.whitepin,
          fontWeight: FontWeight.w400,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.whitepin,
        ),
        headlineLarge: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 26,
          fontWeight: FontWeight.w500,
          color: AppColors.whitepin,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Color(0xffA08EA4),
        ),
        headlineSmall: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: Color(0xffA08EA4),
        ),
        titleSmall: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.whitepin,
        ),

        labelMedium: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.whitepin,
        ),
        // headlineMedium:
      ));
  static ThemeData customLightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColors.blue,
      secondaryHeaderColor: AppColors.blue,
      primaryColor: Colors.white,
      textTheme: const TextTheme(
        bodySmall: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: AppColors.darkgray,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: AppColors.darkgray,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: AppColors.darkgray,
        ),
        headlineLarge: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 26,
          fontWeight: FontWeight.w500,
          color: AppColors.darkgray,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: AppColors.purple,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: AppColors.purple,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.darkgray,
        ),
        labelMedium: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.darkgray,
        ),
        // headlineMedium:
      ));
}
// (){
//   if(Get.isDarkMode){
//     Get.changeTheme(AppTheme.customLightTheme);
//   }else{
//     Get.changeTheme(AppTheme.customDarkTheme);
//   }
// }
