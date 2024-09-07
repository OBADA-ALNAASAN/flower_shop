import 'package:flower_shop/core/constant/app_color.dart';
import 'package:flower_shop/core/constant/app_image.dart';
import 'package:flower_shop/core/constant/app_routes.dart';
import 'package:flower_shop/view/widget/pin_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 320.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(80))),
              child: Center(
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(AppImageAsset.blueflower,
                          width: 250.w, height: 220.h),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.darkgray,
                          size: 30,
                        ),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Verification Code'.tr,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Pleas enter verification code sent to Email address .....@Gmail.com'.tr,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Valid to 10 minuts'.tr,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Re send code'.tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PinInput(),
                      PinInput(),
                      PinInput(),
                      PinInput(),
                      PinInput(),
                      PinInput(),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    'Verification code consists of\nnumbers and letters '.tr,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Get.offNamed(AppRoutes.bottomNavbar);
                      },
                      child: Container(
                        width: 260.w,
                        height: 58.h,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEEE5FF),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Submit'.tr,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            fontSize: 16.sp,
                            color: AppColors.purple,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
