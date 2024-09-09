import 'package:flower_shop/controller/auth/logincontroller.dart';
import 'package:flower_shop/core/constant/app_color.dart';
import 'package:flower_shop/core/constant/app_image.dart';
import 'package:flower_shop/core/constant/app_routes.dart';
import 'package:flower_shop/view/widget/custom_button.dart';
import 'package:flower_shop/view/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LogincontrollerImp controller = Get.put(LogincontrollerImp());
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  'Logo'.tr,
                  style: TextStyle(
                    fontSize: 50.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.purple,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        AppImageAsset.login2,
                        height: 170.h,
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    child: Image.asset(
                      AppImageAsset.login,
                      height: 240.h,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 90.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Column(
              children: [
                CustomTextField(
                  textEditingController: controller.email,
                  label: 'Email'.tr,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  textEditingController: controller.phonenumber,
                  label: 'Phone Number'.tr,
                  textInputType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  textEditingController: controller.password,
                  label: 'Password'.tr,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Should be none less than 8 characters'.tr,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Forget password?'.tr,
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    color: Color(0xffff0000),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                  width: 180.w,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dont have an account?'.tr,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          InkWell(
                              onTap: () {
                                controller.goToSignUp();
                              },
                              child: Text(
                                'Sign up'.tr,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                  color: AppColors.purple,
                                ),
                              )),
                        ],
                      ),
                      const Divider(
                        height: 1,
                        color: AppColors.purple,
                        endIndent: 5,
                        indent: 5,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomButton(
                        onPressed: () {
                          //controller.login();
                          Get.toNamed(AppRoutes.verificationScreen);
                        },
                        text: 'Login'.tr,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/bottom.png',
                    height: 120.h,
                  ),
                  Image.asset(AppImageAsset.bottomflower, height: 120.h),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
