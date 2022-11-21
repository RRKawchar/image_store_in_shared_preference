import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final String title="Flutter save image in Preferences";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  Future<XFile>? imageFile;
  pickImageFromGallery(ImageSource source){

    imageFile= ImagePicker().pickImage(source: source) as Future<XFile>?;
  }
  _getFromGallery(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: source,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
    }
  }

  // Widget imageFromGallery(){
  //   return FutureBuilder<XFile>(
  //     future: imageFile,
  //       builder: (BuildContext context,AsyncSnapshot<XFile> snapshot){
  //       if(snapshot.connectionState==ConnectionState.done){
  //
  //         if(snapshot.data==null){
  //
  //           return const Text("Error");
  //         }
  //         return Image.file(snapshot.data);
  //       }
  //       if(snapshot.error!=null){
  //         return const Text('Error Picking Image',textAlign: TextAlign.center,);
  //       }
  //       return const Text("No image selected",textAlign: TextAlign.center,);
  //       }
  //   );
  // }
  //
  // Widget imgFromGallery(){
  //
  //   return FutureBuilder<XFile>(
  //
  //       builder: (context,)
  //   )
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: (){
              _getFromGallery(ImageSource.gallery);
              },
              icon:const Icon(Icons.add)
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                 // imageFromGallery()
          ],
        ),
      ),
    );
  }
}
