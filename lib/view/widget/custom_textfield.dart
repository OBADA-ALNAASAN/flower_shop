import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.obscureText, this.textInputType, required this.lable});

  final String lable;
  final bool? obscureText;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffF3E9F5), // Border color
        ),
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        obscureText: obscureText == null ? false : true,
        keyboardType:textInputType ,
        // controller: ,
        decoration: InputDecoration(
          labelText: lable,
          labelStyle: Theme.of(context).textTheme.labelMedium,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
