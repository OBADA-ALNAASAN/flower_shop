import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinInput extends StatelessWidget {
  PinInput({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 40.w,
        height: 40.h,
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          maxLength: 1,
          decoration: const InputDecoration(
            hintText: "*",
            counterText: '',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
