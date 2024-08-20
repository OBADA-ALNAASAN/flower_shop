import 'package:flower_shop/constant/app_color.dart';
import 'package:flower_shop/constant/app_image.dart';
import 'package:flower_shop/view/widget/custom_button.dart';
import 'package:flower_shop/view/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: ListView(
        children: [
          Image.asset(AppImageAsset.signup),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Column(
              children: [
                const CustomTextField(
                  lable: 'Email',
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  lable: 'Phone Number',
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  lable: 'User name',
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  lable: 'Password',
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  lable: 'Re Password',
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFfffff),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const TextField(
                    // controller: ,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.picture_as_pdf),
                      labelText: 'Uplod PDF',
                      labelStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        color: AppColors.darkgray,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CustomButton(
                      onPressed: () {
                        
                      },
                      text: 'Sign Up',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16.sp,
                            color: AppColors.darkgray,
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
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
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
