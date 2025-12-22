import 'package:flutter/material.dart';

class Splash2Screen extends StatefulWidget {
  const Splash2Screen({super.key});

  @override
  State<Splash2Screen> createState() => _Splash2ScreenState();
}

class _Splash2ScreenState extends State<Splash2Screen> {
  bool isFirstRun = true;
  bool isLoggedIn = false;

  _checking() {
    if (isFirstRun) {
      // Login pgage
    } else if (isFirstRun && isLoggedIn) {
      // Home Page
    } else if (isFirstRun && !isLoggedIn) {
      // Login Page
    } else if (!isFirstRun) {
      // Splash screen
    }
  }

  //  for or gate we use
  //  ||
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,

        automaticallyImplyLeading: false,
      ),

      body: Column(children: [
       
      ],),
    );
  }
}
