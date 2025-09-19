import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.maxLines = 1,
    this.hintText,
  });

  final TextEditingController? controller;
  final int maxLines;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(18),
        filled: true,
        fillColor: Colors.white.withOpacity(0.7),
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xFF666874)),
      ),
      style: const TextStyle(
        color: Color(0xFF121212),
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide.none,
    );
  }
}
