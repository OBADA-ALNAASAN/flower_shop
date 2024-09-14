import 'package:flower_shop/core/constant/app_color.dart';

import 'package:flower_shop/view/widget/mycart_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MycartPage extends StatelessWidget {
  const MycartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.darkgray,
                      size: 30.sp,
                    ),
                    onPressed: () {}),
                Center(
                  child: Text(
                    'My Cart',
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.purple,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/cart.png',
                          height: 190.h,
                        ),
                      ],
                    ),
                    Positioned(
                      right: 14,
                      top: 20,
                      child: Image.asset(
                        'assets/images/cartflower.png',
                        height: 125.h,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 75.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MycartContainer(
                    text: ' Phalaenopsis White Orchid ',
                    newline: 'Steam',
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  const MycartContainer(
                    text: ' Aloe Vera Barbadensis ',
                    newline: 'Miller',
                  ),
                  Divider(
                    height: 28.h,
                    color: AppColors.purple,
                    thickness: 1.5.h,
                  ),
                  Text(
                    'Address: Dummar street A bulding\nnumber 25 ',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: 4.h),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Text(
                      'Change Address ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: AppColors.purple,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    'Expected Date:  june/26/2024',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Expected Time: 2:30 PM',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: 4.h),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Text(
                      'Schedule Send Time ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: AppColors.purple,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    'Delivery: 20\$',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Taxes: 15\$ ',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Text(
                        'Total Price:',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: AppColors.purple,
                        ),
                      ),
                      Text(
                        '70\$',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 150.w,
                    decoration: BoxDecoration(
                      color: AppColors.pink,
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w900,
                          fontSize: 14.sp,
                          color: AppColors.purple,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
       
    );
  }
}
