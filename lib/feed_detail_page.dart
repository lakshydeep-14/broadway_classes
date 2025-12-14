import 'package:broadway_infosys/message.dart';
import 'package:flutter/material.dart';

class FeedDetailPage extends StatelessWidget {
  final String title;
  const FeedDetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(title),
        leading: IconButton(
          onPressed: () {
            print('on Back Pressed.✅');
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.red),
          ),
          onPressed: () {
            print('on Back Pressed.✅');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MessageScreen();
                },
              ),
            );
          },
          child: Text('Message', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
