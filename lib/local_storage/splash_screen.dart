import 'package:broadway_infosys/local_storage/home_screen.dart';
import 'package:broadway_infosys/local_storage/login_screen.dart';
import 'package:broadway_infosys/local_storage/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageSplashScreen extends StatefulWidget {
  const LocalStorageSplashScreen({super.key});

  @override
  State<LocalStorageSplashScreen> createState() =>
      _LocalStorageSplashScreenState();
}

class _LocalStorageSplashScreenState extends State<LocalStorageSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((_) {
      checkInitialStatus();
    });
  }

  void checkInitialStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final _isFirstRun = prefs.getBool(isFirstRun);

    // _isFirstRun is TRUE, navigate to onboarding screen
    // _isFirstRun is FALSE, navigate to Login screen
    if (_isFirstRun == true) {
      Get.off(() => OnboardingScreen());
    } else {
      final isLoggedInValue = prefs.getBool(isLoggedIn);
      if (isLoggedInValue == true) {
        Get.off(() => HomeScreen());
      } else {
        Get.off(() => LocalLoginScreen());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            // height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/shopping.png', fit: BoxFit.cover),
          ),
          Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
