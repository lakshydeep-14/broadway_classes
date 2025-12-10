import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Class 4', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello Broadway Infosys."),
            Text(
              "Welcome",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            Image.asset("assets/image1.png", height: 200),

            Icon(Icons.person, color: Colors.red, size: 100),
          ],
        ),
      ),
    );
  }
}


// Container
// Row
// Column
// Text
// GestureDetector
// SizedBox
// Padding
// Expanded
// Center

