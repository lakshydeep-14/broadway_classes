import 'package:broadway_infosys/local_storage/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

String isFirstRun = 'IS_FIRST_RUN';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Onboarding Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final SharedPreferences prefs =
                await SharedPreferences.getInstance();
            prefs.setBool(isFirstRun, false);
            print(prefs.getBool(isFirstRun));
            Get.off(() => LocalLoginScreen());
          },
          child: Text('Go to Login Screen'),
        ),
      ),
    );
  }
}
