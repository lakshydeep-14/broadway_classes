import 'package:flutter/material.dart';

class PhotoDetail extends StatefulWidget {
  final String text;
  const PhotoDetail({super.key, required this.text});

  @override
  State<PhotoDetail> createState() => _PhotoDetailState();
}

class _PhotoDetailState extends State<PhotoDetail> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
