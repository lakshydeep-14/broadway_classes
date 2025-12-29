import 'package:broadway_infosys/get_example/get_example.dart';
import 'package:broadway_infosys/get_example/product_list_screen.dart';
import 'package:broadway_infosys/home_page.dart';
import 'package:broadway_infosys/product_list.dart';
import 'package:broadway_infosys/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: ProductListScreen());
  }
}

// MaterialApp
// Scaffold

// Splash
// Slpash 0- 4
// Login
// Home




// _checking() {
//     if (isFirstRun) {
//       // Route to Login page
//     } else if (isFirstRun && isLoggedIn) {
//       // Route to Home Page
//     } else if (isFirstRun && !isLoggedIn) {
//       // Route to Login Page
//     } else if (!isFirstRun) {
//       // Route to Splash screen
//     }
//   }