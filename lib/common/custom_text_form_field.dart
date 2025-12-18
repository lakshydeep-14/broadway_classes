import 'package:flutter/material.dart';

class CustomtextFormField extends StatefulWidget {
  const CustomtextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.maxLength,
    this.onTap,
    this.readOnly = false,
  });
  final Function()? onTap;
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final int? maxLength;
  final bool readOnly;
  @override
  State<CustomtextFormField> createState() => _CustomtextFormFieldState();
}

class _CustomtextFormFieldState extends State<CustomtextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      readOnly: widget.readOnly,
      controller: widget.controller,
      validator: widget.validator,
      // onChanged: (value) {
      //   print(value);
      // },
      maxLength: widget.maxLength,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        hintText: widget.hintText,
        filled: true,
        fillColor: Color(0XFFF9F0FF),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
