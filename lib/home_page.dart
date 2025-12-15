import 'package:broadway_infosys/common/custom_text_form_field.dart';
import 'package:broadway_infosys/feed_post.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Class 4', style: TextStyle(color: Colors.white)),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomtextFormField(
                controller: TextEditingController(),
                hintText: 'First Name',
                keyboardType: TextInputType.emailAddress,
              ),

              CustomtextFormField(
                controller: TextEditingController(),
                hintText: 'Last name',
                keyboardType: TextInputType.emailAddress,
              ),

              CustomtextFormField(
                controller: TextEditingController(),
                hintText: 'email',
                keyboardType: TextInputType.emailAddress,
              ),
              OutlinedButton(
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  if (kDebugMode) {
                    print('it is debug mode.');
                  } else {
                    print('it is not');
                  }
                  if (_formKey.currentState!.validate()) {
                    print('successfull');
                  } else {
                    print('unsuccessfull.');
                  }
                },
                child: Text('Login'),
              ),
              Image.network(
                'https://broadwayinfosys.com/blog/wp-content/uploads/2020/05/logo-new-for-social.jpg',
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return FeedPost(position: index);
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
