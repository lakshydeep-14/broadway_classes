import 'package:broadway_infosys/splash2.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SplashModel {
  final String title;
  final Color? color;
  final String subTitle;
  final Color backgroundColor;

  SplashModel({
    required this.title,
    this.color,
    required this.subTitle,
    required this.backgroundColor,
  });
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int index = 0;
  List<SplashModel> _splashList = [
    SplashModel(
      title: 'Welcome to',
      color: Colors.yellow,
      subTitle: 'subTitle 1',
      backgroundColor: Colors.red,
    ),
    SplashModel(
      title: 'Welcome to 2',
      subTitle: 'subTitle 2',
      backgroundColor: Colors.black,
    ),
    SplashModel(
      title: 'Welcome to 3',
      subTitle: 'subTitle 3',
      backgroundColor: Colors.pink,
    ),
    SplashModel(
      title: 'Welcome to 4',

      subTitle: 'subTitle 4',
      backgroundColor: Colors.yellowAccent,
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final item = _splashList[index];
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => Splash2Screen()),
              );
            },
            child: Container(
              // color: item.backgroundColor,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(100),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/shopping2.png', fit: BoxFit.cover),
              ),
            ),
          ),

          // Positioned.fill(
          //   top: 96,
          //   left: 17,
          //   right: 17,
          //   // bottom: 56,
          //   child: Center(
          //     child: Column(
          //       mainAxisSize: MainAxisSize.max,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Center(
          //           child: Text(
          //             item.title,
          //             style: TextStyle(
          //               fontSize: 32,
          //               fontWeight: FontWeight.w900,
          //             ),
          //           ),
          //         ),
          //         // if (item.color != null)
          //         //   Container(height: 100, width: 100, color: item.color),
          //         Text(
          //           item.subTitle,
          //           style: TextStyle(color: Colors.white, fontSize: 22),
          //         ),
          //         Spacer(),
          //         DotsIndicator(dotsCount: 4, position: index.toDouble()),
          //         SizedBox(height: 32),
          //         GestureDetector(
          //           onTap: () {
          //             //  (index+1)<_splashList.length
          //             if (index < _splashList.length - 1) {
          //               setState(() {
          //                 index++;
          //               });
          //             } else {
          //               Fluttertoast.showToast(
          //                 msg: 'Navigate to Auth1-welcome screen',
          //               );
          //             }
          //           },
          //           child: Container(
          //             height: 60,
          //             width: deviceSize.width,
          //             decoration: BoxDecoration(
          //               boxShadow: [
          //                 BoxShadow(
          //                   offset: Offset(0, -100),
          //                   blurRadius: 9,
          //                   spreadRadius: 0,
          //                   color: Colors.black.withValues(alpha: 1),
          //                 ),
          //                 BoxShadow(
          //                   offset: Offset(0, 50),
          //                   blurRadius: 9,
          //                   spreadRadius: 0,
          //                   color: Colors.purpleAccent.withValues(alpha: 1),
          //                 ),
          //               ],
          //               gradient: LinearGradient(
          //                 colors: [Colors.black, Colors.orange],
          //               ),
          //             ),
          //             child: Center(
          //               child: Text(
          //                 'Get Started',
          //                 style: TextStyle(fontSize: 24, color: Colors.white),
          //               ),
          //             ),
          //           ),
          //         ),
          //         SizedBox(height: 56),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
