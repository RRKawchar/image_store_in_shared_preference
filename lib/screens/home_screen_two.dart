import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({Key? key}) : super(key: key);

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {


  ImagePicker picker = ImagePicker();
  XFile? image;


  Future pickImage(ImageSource source)async{

    image=await picker.pickImage(source:source);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            title: const Text("Image Picker from Gallery"),
            backgroundColor: Colors.redAccent
        ),
        body: Container(
            padding: const EdgeInsets.only(top:20, left:20, right:20),
            alignment: Alignment.topCenter,
            child: Column(
              children: [

                ElevatedButton(
                    onPressed: ()=>pickImage(ImageSource.gallery),
                    child: const Text("Pick Image")
                ),

                image == null?Container():
                Image.file(File(image!.path))

              ],)
        )
    );
  }
}
