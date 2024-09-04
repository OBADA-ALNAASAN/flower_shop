import 'package:flower_shop/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MycartContainer extends StatelessWidget {
  const MycartContainer({super.key, required this.text, required this.newline});
  final String text;
  final String newline;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Order:',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: AppColors.purple,
                    ),
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: AppColors.darkgray,
                    ),
                  ),
                ],
              ),
              Text(
                newline,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: AppColors.darkgray,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 28.h,
                    width: 28.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white, // Border color
                        width: 3.w,
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/trash.png',
                      height: 18.h,
                      width: 18.w,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    height: 28.h,
                    width: 28.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white, // Border color
                        width: 3.w,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '+1',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: const Color(0xff5AE804),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
