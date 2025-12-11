import 'package:broadway_infosys/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int commentCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Class 4', style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              // padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DetailPage()),
                      );
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/image2.jpg'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'broadway_infosys',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'December 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Icon(Icons.more_horiz, color: Colors.white),
                ],
              ),
            ),
            Container(color: Colors.yellow, height: 2000, width: 100),
            Image.asset('assets/image2.jpg'),
            // Expanded(
            //   child: Container(
            //     color: Colors.red,
            //     child: Image.asset('assets/image2.jpg'),
            //   ),
            // ),
            // Expanded(
            //   child: Image.asset(
            //     'assets/image3.png',
            //     height: 500,
            //     width: 1000,
            //     fit: BoxFit.fill,
            //   ),
            // ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 18,
                    children: [
                      Icon(Icons.favorite, color: Colors.white, size: 40),
                      // SizedBox(width: 18),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              commentCount++;
                              setState(() {});
                              print(commentCount);
                            },
                            child: Icon(
                              Icons.comment,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Text(
                            commentCount.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(width: 18),
                      Icon(Icons.repeat, color: Colors.white, size: 40),
                      // SizedBox(width: 18),
                      Icon(Icons.share, color: Colors.white, size: 40),
                    ],
                  ),
                  Icon(Icons.bookmark, color: Colors.white, size: 40),
                ],
              ),
            ),
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


// Buttons
