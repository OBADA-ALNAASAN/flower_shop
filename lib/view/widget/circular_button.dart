
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({super.key, required this.buttonColor});
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    void changeColor() {
      // // Toggle between blue and red
      // buttonColor =
      //     buttonColor == Colors.white ? AppColors.purple : Colors.white;
    }

    return GestureDetector(
      onTap: changeColor,
      child: Container(
        width: 18.w,
        height: 18.h,
        decoration: BoxDecoration(
          color: buttonColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
