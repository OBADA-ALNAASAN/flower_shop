import 'package:flower_shop/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.lable});

  final String lable;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFfffff),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        // controller: ,
        decoration: InputDecoration(
          
          labelText: lable,
          labelStyle: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18,
            color: AppColors.darkgray,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
