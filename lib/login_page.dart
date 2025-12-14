import 'package:broadway_infosys/common/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // # -> 0XFF
      // backgroundColor: Color(0XFF1F0033),
      // rgba(31, 0, 51, 1)
      // backgroundColor: Color.fromARGB(31, 0, 51, 1),
      backgroundColor: Color(0XFF1F0033),
      body: Padding(
        padding: EdgeInsets.fromLTRB(14, 189, 14, 81),
        child: Container(
          // Inner Space-> Use Padding
          // Outer Space-> User Margin
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 31),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.purple.withOpacity(0.5),
          ),
          child: Column(
            children: [
              Text(
                'Want to know more about you to give you a personalised experience',
                style: TextStyle(color: Color(0xffF9F0FF), fontSize: 24),
              ),
              SizedBox(height: 20),
              CustomtextFormField(
                controller: firstNameController,
                hintText: 'First Name',
                keyboardType: TextInputType.name,
              ),
              CustomtextFormField(
                controller: lastNameController,
                hintText: 'Last Name',
                keyboardType: TextInputType.name,
              ),
              CustomtextFormField(
                controller: phoneController,
                hintText: 'Phone Number',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 100),
              TextButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  elevation: 4,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // How to close keyobard on clicking login button
                  print(firstNameController.text);
                },
                child: Text('Login', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
