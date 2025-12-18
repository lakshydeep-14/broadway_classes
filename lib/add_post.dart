import 'dart:io';

import 'package:broadway_infosys/common/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final ImagePicker picker = ImagePicker();
  XFile? selectedUserPhoto;
  final TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Post')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              CustomtextFormField(
                controller: userNameController,
                hintText: 'Enter User Name',
              ),
              if (selectedUserPhoto != null)
                Image.file(File(selectedUserPhoto!.path))
              else
                Text('Use the below button to pick image'),
              CustomtextFormField(
                controller: userNameController,
                hintText: 'Pick user photo',
                readOnly: true,
                onTap: () async {
                  final XFile? image = await picker.pickImage(
                    source: ImageSource.camera,
                  );
                  // final List<XFile>? image2 = await picker.pickMultiImage(
                  // );
                  if (image != null) {
                    setState(() {
                      selectedUserPhoto = image;
                    });
                    print('Picked image from gallery');
                  } else {
                    print('Image not picked  from gallery');
                  }
                },
              ),
              ElevatedButton(onPressed: () {}, child: Text('Save')),
            ],
          ),
        ),
      ),
    );
  }
}
