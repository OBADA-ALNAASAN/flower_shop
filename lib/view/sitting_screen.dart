import 'package:flower_shop/controller/settingcontroller.dart';
import 'package:flower_shop/core/constant/app_color.dart';
import 'package:flower_shop/view/widget/text_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SittingScreen extends StatelessWidget {
  const SittingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingcontrollerImp settingcontrollerImp = SettingcontrollerImp();
    return  ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(45))),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.darkgray,
                            size: 30.sp,
                          ),
                          onPressed: () {}),
                      SizedBox(
                        width: 60.w,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 28.sp,
                          color: AppColors.purple,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 70.h,
                          ),
                          const TextSetting(text: 'Account Information'),
                          const TextSetting(text: 'Payment Methods'),
                          const TextSetting(text: 'Order History'),
                          const TextSetting(text: 'Security Sittings'),
                          const TextSetting(text: 'Support & Feedback'),
                          const TextSetting(text: 'Language Sittings'),
                          const TextSetting(text: 'Legal Information'),
                          const TextSetting(text: 'About us'),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: InkWell(
                              onTap: () {
                                settingcontrollerImp.logout();
                              },
                              child: Text(
                                'Log Out',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff8C8A8C),
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/setting1.png',
                          height: 360,
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Image.asset(
            'assets/images/settingbackground.png',
          )
        ],
      
    );
  }
}
