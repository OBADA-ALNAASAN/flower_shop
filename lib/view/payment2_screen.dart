import 'package:flower_shop/constant/app_color.dart';
import 'package:flower_shop/constant/app_routes.dart';
import 'package:flower_shop/view/widget/circular_button.dart';
import 'package:flower_shop/view/widget/custom_button.dart';
import 'package:flower_shop/view/widget/custom_container.dart';
import 'package:flower_shop/view/widget/custom_text.dart';
import 'package:flower_shop/view/widget/custom_textfield.dart';
import 'package:flower_shop/view/widget/paymentbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Payment2Page extends StatelessWidget {
  const Payment2Page({super.key});

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
            Text(
              'Payment Method',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
                color: AppColors.purple,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomContainer(
                  text: 'Credit Card',
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomContainer(text: 'Debit Card'),
                    SizedBox(height: 15.h),
                    const CustomContainer(text: 'Digital Wallet'),
                  ],
                ),
                const CustomContainer(
                  text: ' PayPal ',
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              'Card information',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
                color: AppColors.purple,
              ),
            ),
            SizedBox(height: 8.h),
            const CustomText(
              text: 'Card Holder Full Name',
            ),
            const CustomTextField(lable: '*********'),
            SizedBox(height: 8.h),
            const CustomText(text: 'Card Number'),
            const CustomTextField(lable: '*********'),
            SizedBox(height: 12.h),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(text: 'Expiration Date'),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: 130.w,
                      child: const CustomTextField(
                        lable: '22/5',
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 30.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(text: 'CVV'),
                    SizedBox(height: 8.h),
                    SizedBox(
                      width: 130.w,
                      child: const CustomTextField(
                        lable: '****',
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.h),
            const CustomText(text: 'Save for Future Purchases'),
            Row(
              children: [
                const CircularButton(
                  buttonColor: AppColors.purple,
                ),
                SizedBox(
                  width: 8.w,
                ),
                const CustomText(
                  text: 'Yes',
                ),
                SizedBox(
                  width: 20.w,
                ),
                const CircularButton(
                  buttonColor: Colors.white,
                ),
                SizedBox(
                  width: 8.w,
                ),
                const CustomText(
                  text: 'No',
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20.h),
                CustomButton(
                  text: 'Continue',
                  onPressed: () {
                    Get.offNamed(AppRoutes.home);
                    Get.snackbar(
                      '',
                      '',
                      // barBlur: 20,
                      overlayBlur: 10,
                      duration: const Duration(minutes: 1),

                      snackStyle: SnackStyle.FLOATING,
                      messageText: SizedBox(
                        height: 160.h,
                        child: Column(
                          children: [
                            Text(
                              'Thank you for your order! It has\nbeen successfully submitted. You\ncan track and make changes to it\n by visiting the \'My Orders\' section ',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15.sp,
                                color: AppColors.darkgray,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                height: 36.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: AppColors.blue,
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Center(
                                  child: Text(
                                    'Got it',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: AppColors.purple,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      backgroundColor: Colors.white,
                      snackPosition: SnackPosition.TOP,
                      borderRadius: 15,
                      margin: EdgeInsets.only(
                          left: 20.w,
                          right: 20.w,
                          top: MediaQuery.of(context).size.height / 3),
                      colorText: AppColors.darkgray,
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
