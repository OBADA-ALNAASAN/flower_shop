import 'package:flower_shop/constant/app_color.dart';
import 'package:flower_shop/constant/app_image.dart';
import 'package:flower_shop/constant/app_routes.dart';
import 'package:flower_shop/view/widget/custom_button.dart';
import 'package:flower_shop/view/widget/custom_textfield.dart';
import 'package:flower_shop/view/widget/paymentbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25.w,
        ),
        child: ListView(
          children: [
            SizedBox(height: 20.h),
            PaymentBar(
              onPressed: () {
                Get.back();
              },
            ),
            const CustomTextField(lable: 'Name'),
            SizedBox(height: 20.h),
            const CustomTextField(lable: 'Phone Number'),
            SizedBox(height: 20.h),
            const CustomTextField(lable: 'Email'),
            SizedBox(height: 20.h),
            const CustomTextField(lable: 'Town/City'),
            SizedBox(height: 20.h),
            const CustomTextField(lable: 'Adress'),
            const Divider(height: 0),
            const CustomTextField(lable: 'Special Instructions About Adress'),
            SizedBox(height: 20.h),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40.h,
                    width: 220.w,
                    decoration: BoxDecoration(
                      color: AppColors.pink,
                      borderRadius: BorderRadius.circular(5.w),
                    ),
                    child: Center(
                      child: Text(
                        'Use My Location',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                          color: AppColors.purple,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        Get.toNamed(AppRoutes.payment2page);
                      },
                    ),
                    Positioned(
                      top: 20,
                      child: Transform.rotate(
                        angle: 41.1,
                        child: Image.asset(
                          AppImageAsset.pyment,
                          height: 160.h,
                          width: 160.w,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
