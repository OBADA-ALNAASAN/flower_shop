import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextSetting extends StatelessWidget {
  const TextSetting({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff8C8A8C),
                  fontSize: 14.sp),
            ),
            const Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Color(0xff8C8A8C),
            )
          ],
        ),
      ),
    );
  }
}
