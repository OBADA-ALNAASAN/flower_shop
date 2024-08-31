import 'package:flower_shop/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class  extends StatelessWidget {
  const PaymentBar({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.darkgray,
                size: 30.sp,
              ),
              onPressed: onPressed),
          SizedBox(
            width: 50.w,
          ),
          Text(
            'Payment',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              fontSize: 30.sp,
              color: AppColors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
