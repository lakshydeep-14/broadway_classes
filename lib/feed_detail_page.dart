import 'package:broadway_infosys/message.dart';
import 'package:flutter/material.dart';

class FeedDetailPage extends StatefulWidget {
  final String title;
  const FeedDetailPage({super.key, required this.title});

  @override
  State<FeedDetailPage> createState() => _FeedDetailPageState();
}

class _FeedDetailPageState extends State<FeedDetailPage> {
  int _value = 0;
  List<String> _photoList = [
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
    'assets/app_logo.png',
    'assets/image2.jpg',
    'assets/image3.png',
    'assets/image4.png',
  ];
  Future<bool?> _showBackDialog() {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text('Are you sure you want to leave this page?'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Nevermind'),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Leave'),
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (didPop) {
          return;
        }
        final bool shouldPop = await _showBackDialog() ?? false;
        if (context.mounted && shouldPop) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(widget.title),
          leading: IconButton(
            onPressed: () {
              _showBackDialog();
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                spacing: 20,
                children: [
                  CircleAvatar(radius: 50, backgroundColor: Color(0xffE8CBFB)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.title, style: TextStyle(fontSize: 24)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                setState(() {
                                  _value = 10;
                                });
                                print(_value);
                                print('2');
                                setState(() {
                                  _value = 20;
                                });
                                print(_value);
                                await Future.delayed(Duration(seconds: 10));
                                print('3');
                              },
                              child: Text('Follow'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                try {
                                  int.parse('1');
                                } on Exception catch (e, stackTrace) {
                                  debugPrint('Error: $e');
                                  debugPrint('StackTrace: $stackTrace');
                                }
                              },
                              child: Text('Message'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(height: 100, width: double.infinity, color: Colors.red),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: Colors.red, width: 5),
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _photoList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      // childAspectRatio: ,
                      childAspectRatio: 1,
                      crossAxisCount: 3, // number of columns
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Image.asset(_photoList[index]),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).padding.bottom),
            // Container(height: 200, width: double.infinity, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
