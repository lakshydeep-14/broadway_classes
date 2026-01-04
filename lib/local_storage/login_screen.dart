import 'package:broadway_infosys/local_storage/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

String isLoggedIn = 'IS_LOGGED_IN';

class LocalLoginScreen extends StatefulWidget {
  const LocalLoginScreen({super.key});

  @override
  State<LocalLoginScreen> createState() => _LocalLoginScreenState();
}

class _LocalLoginScreenState extends State<LocalLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final SharedPreferences prefs =
                await SharedPreferences.getInstance();
            prefs.setBool(isLoggedIn, true);
            // print(prefs.getBool(isFirstRun));
            Get.off(() => HomeScreen());
          },
          child: Text('Go to Home Screen'),
        ),
      ),
    );
  }
}
