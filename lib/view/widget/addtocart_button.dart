import 'package:flower_shop/core/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddtocartButton extends StatelessWidget {
  const AddtocartButton(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 26,
        width: 95.w,
     
        decoration: BoxDecoration(
          color: AppColors.pink,
          borderRadius: BorderRadius.circular(3.0),
        ),
        child: Center(
          child: Text(
            'Add To Cart',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 10.sp,
              color: AppColors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
