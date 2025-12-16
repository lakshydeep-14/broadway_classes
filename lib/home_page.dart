import 'package:broadway_infosys/common/custom_text_form_field.dart';
import 'package:broadway_infosys/feed_post.dart';
import 'package:broadway_infosys/model/post_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int commentCount = 0;
  final _formKey = GlobalKey<FormState>();
  List<PostModel> postList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Insta Clone', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {
              postList.add(
                PostModel(
                  index: 0,
                  likeCount: 100,
                  isPostLiked: true,
                  userPhoto:
                      'https://broadwayinfosys.com/blog/wp-content/uploads/2020/05/logo-new-for-social.jpg',
                  userName: 'Manjan Shahi',
                  postDate: DateTime.now(),
                  photoUrl: 'assets/image2.jpg',
                  description: 'This is post\'s description.',
                ),
              );
              setState(() {});
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Post successfully added.'),
                  behavior: SnackBarBehavior.floating,
                  // duration: Duration(seconds: 10),
                ),
              );
              print("Post List length: " + postList.length.toString());
            },
            icon: Icon(Icons.add, color: Colors.white, size: 30),
          ),
        ],
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 20,
            children: [
              // CustomtextFormField(
              //   controller: TextEditingController(),
              //   hintText: 'First Name',
              //   maxLength: 10,
              //   keyboardType: TextInputType.text,
              //   validator: (v) {
              //     if (v == null) {
              //       return 'Enter first name';
              //     } else {
              //       return null;
              //     }
              //   },
              // ),

              // CustomtextFormField(
              //   controller: TextEditingController(),
              //   hintText: 'Last name',
              //   keyboardType: TextInputType.name,
              //   validator: (v) {
              //     if (v == null || v.isEmpty) {
              //       return 'Enter last name';
              //     } else {
              //       return null;
              //     }
              //   },
              // ),

              // CustomtextFormField(
              //   controller: TextEditingController(),
              //   hintText: 'Email',
              //   keyboardType: TextInputType.emailAddress,
              //   validator: (v) {
              //     if (v == null || v.trim().isEmpty) {
              //       return 'Email is required';
              //     }

              //     final emailRegex = RegExp(
              //       r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              //     );

              //     if (!emailRegex.hasMatch(v.trim())) {
              //       return 'Enter a valid email';
              //     }

              //     return null;
              //   },
              // ),
              // CustomtextFormField(
              //   controller: TextEditingController(),
              //   hintText: 'Phone',
              //   validator: (v) {
              //     if (v == null || v.trim().isEmpty) {
              //       return 'Phone number is required';
              //     }

              //     if (v.length < 10) {
              //       return 'Enter a valid phone number';
              //     }

              //     return null;
              //   },
              //   keyboardType: TextInputType.phone,
              // ),
              // OutlinedButton(
              //   onPressed: () {
              //     FocusManager.instance.primaryFocus?.unfocus();
              //     if (kDebugMode) {
              //       print('it is debug mode.');
              //     } else {
              //       print('it is not');
              //     }
              //     if (_formKey.currentState!.validate()) {
              //       print('successfull');
              //     } else {
              //       print('unsuccessfull.');
              //     }
              //   },
              //   child: Text('Login'),
              // ),
              // Image.network(
              //   'https://broadwayinfosys.com/blog/wp-content/uploads/2020/05/logo-new-for-social.jpg',
              // ),
              if (postList.isEmpty)
                Expanded(
                  child: Center(
                    child: Text(
                      'There is no post.',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                )
              else
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: postList.length,
                    itemBuilder: (context, index) {
                      return FeedPost(post: postList[index]);
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
