import 'package:broadway_infosys/home_page.dart';
import 'package:broadway_infosys/photo_detail.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => PhotoDetail(text: 'Hello',)),
              (route) => false,
            );

            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (_) => HomePage()),
            // );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(child: Text('Message Page')),
    );
  }
}

List<String> _photo=[
  'assets/image1.png',
  'assets/image1.png',
  'assets/image1.png',
  'assets/image1.png',
  'assets/image1.png',
  'assets/image1.png',
  'assets/image1.png',
  'assets/image1.png',
  'assets/image1.png',
  'assets/image1.png',
  
];