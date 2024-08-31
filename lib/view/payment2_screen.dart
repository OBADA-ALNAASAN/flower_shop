import 'package:flower_shop/constant/app_color.dart';
import 'package:flower_shop/view/widget/custom_button.dart';
import 'package:flower_shop/view/widget/custom_container.dart';
import 'package:flower_shop/view/widget/custom_text.dart';
import 'package:flower_shop/view/widget/custom_textfield.dart';
import 'package:flower_shop/view/widget/paymentbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                  text: 'PayPal',
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
            const CustomText(text: 'Save for Future Purchases'),
            Column(
              children: [
                SizedBox(height: 20.h),
                CustomButton(
                  text: 'Continue',
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
