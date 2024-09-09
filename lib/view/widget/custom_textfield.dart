import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.obscureText,
      this.textInputType,
      required this.label,
      required this.textEditingController});

  final String label;
  final TextEditingController textEditingController;
  final bool? obscureText;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      keyboardType: textInputType,
      controller: textEditingController,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: Theme.of(context).textTheme.labelMedium,
        enabledBorder: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffF3E9F5), // لون الحدود
          ),
        ),
        focusedBorder: OutlineInputBorder(

          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black,
          ),
        ),
        filled: true,
        fillColor: Theme.of(context).primaryColor, // لون الخلفية
        contentPadding: const EdgeInsets.symmetric(
            horizontal: 10, vertical: 5),
      ),
    );
  }
}
