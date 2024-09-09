import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PinInput extends StatelessWidget {
  PinInput({super.key, required this.onchanged});
  final VoidCallback onchanged;

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        controller: controller,
        // onChanged: (value) {
        //   onchanged(value);
        // },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: InputDecoration(
          hintText: "*",
          counterText: '',
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          // Use contentPadding here
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.h), // Adjust vertical padding
        ),
        style: TextStyle(
          fontSize: 20.sp, // Adjust your font size here if needed
          height: 1, // Adjust the line height if needed
        ),
      ),
    );
  }
}
