import 'package:flutter/material.dart';
import 'package:image_store_in_shared_preference/screens/home_screen.dart';
import 'package:image_store_in_shared_preference/screens/home_screen_two.dart';
import 'package:image_store_in_shared_preference/screens/image_and_video_screen.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Image Store in Shared Preference",
      home: HomeScreenTwo(),
    );
  }
}