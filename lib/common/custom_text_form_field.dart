import 'package:flutter/material.dart';

class CustomtextFormField extends StatelessWidget {
  const CustomtextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
  });

  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (v) {
        return 'this is Required field.';
      },
      // onChanged: (value) {
      //   print(value);
      // },
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Color(0XFFF9F0FF),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
