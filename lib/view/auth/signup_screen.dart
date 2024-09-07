import 'package:flower_shop/core/constant/app_color.dart';
import 'package:flower_shop/core/constant/app_image.dart';
import 'package:flower_shop/view/widget/custom_button.dart';
import 'package:flower_shop/view/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                AppImageAsset.signup,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.darkgray,
                      size: 30.sp,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Sign Up'.tr,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 28.sp,
                      color: AppColors.purple,
                    ),
                  ),
                  Image.asset(
                    'assets/images/signflower.png',
                    height: 180.h,
                    width: 180.w,
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                left: 50,
                right: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.gray,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/circuler.png',
                            height: 15.h,
                          ),
                          Image.asset(
                            'assets/images/prof.png',
                            height: 15.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Column(
              children: [
                Text(
                  'Add Profile Photo'.tr,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomTextField(
                  lable: 'Email'.tr,
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomTextField(
                  lable: 'Phone Number'.tr,
                  textInputType: TextInputType.phone,
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomTextField(
                  lable: 'User name'.tr,
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomTextField(
                  lable: 'Password'.tr,
                  obscureText: true,
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomTextField(
                  lable: 'Re Password'.tr,
                  obscureText: true,
                ),
                SizedBox(
                  height: 18.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xffF3E9F5), // Border color
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    // controller: ,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.picture_as_pdf),
                      labelText: 'Uplod PDF'.tr,
                      labelStyle: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: AppColors.purple,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34),
                  child: Column(
                    children: [
                      CustomButton(
                        onPressed: () {},
                        text: 'Sign Up'.tr,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account? '.tr,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Text(
                                'Login'.tr,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: AppColors.purple,
                                ),
                              )),
                        ],
                      ),
                      const Divider(
                        height: 4,
                        color: AppColors.purple,
                        thickness: 2,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    );
  }
}
