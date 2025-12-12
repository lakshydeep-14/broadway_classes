import 'package:broadway_infosys/message.dart';
import 'package:flutter/material.dart';

class FeedDetailPage extends StatelessWidget {
  final String title;
  const FeedDetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text(title)),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.red),
          ),
          onPressed: () {
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
