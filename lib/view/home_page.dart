import 'package:flower_shop/core/constant/app_color.dart';
import 'package:flower_shop/core/constant/app_image.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Container(
            height: 260.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(60))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                // Logo and image
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImageAsset.flowerhome,
                        width: 100.w,
                        height: 100.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Logo',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w800,
                          fontSize: 60.sp,
                          color: AppColors.purple,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 240.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.h),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        suffixIcon: Icon(
                          Icons.search,
                          color: AppColors.purple,
                          size: 32.sp,
                        ),
                        hintStyle: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: AppColors.darkgray,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImageAsset.logo2,
                        height: 30.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Text(
                  'Hello User',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 80.h,
                  width: 280.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.w),
                      border: Border.all(
                        color: AppColors.whitepin, // Border color
                        width: 3,
                      )),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
                    child: Text(
                      'Explore our stunning collection of flowers and vibrant plants to brighten every occasion.',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                Row(
                  children: [
                    Text(
                      'Offers',
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 240.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(28.w),
                        bottomRight: Radius.circular(6.w),
                        topLeft: Radius.circular(6.w),
                        topRight: Radius.circular(6.w),
                      ),
                      border: Border.all(
                        color: AppColors.pink, // Border color
                        width: 3.w,
                      )),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -30,
                        left: 20,
                        right: 20,
                        child: Image.asset(
                          'assets/images/home.png',
                          width: 200.w,
                          height: 200.h,
                        ),
                      ),
                      Positioned(
                        left: 20.h,
                        right: 20.h,
                        top: 130.h,
                        child: SizedBox(
                          height: 200,
                          width: 250.w,
                          child: Column(
                            children: [
                              Text(
                                'Happy Mothers Day',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w800,
                                  fontSize: 22.sp,
                                  color: AppColors.darkgray,
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Text(
                                'On this special Occasion get\n 50% discount on the Artificial\n Silk Roses',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
