import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/app_fonts.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 12,
      controller: controller,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppFonts.w600s15.copyWith(color: Colors.white),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
      ),
    );
  }
}
