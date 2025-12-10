import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  final String title;
  const CustomWidget({super.key, required this.title});

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text(widget.title));
  }
}
