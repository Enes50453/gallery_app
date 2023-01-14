import 'package:flutter/material.dart';
import 'package:gallery_app/screens/screen_main.dart';
import 'package:gallery_app/screens/screen_picture.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/gallery": (BuildContext context) => ScreenMain(),
        //"/picture": (BuildContext context) => ScreenPicture() // used swipe_image_gallery
      },
      initialRoute: "/gallery", //açılış sayfası
    );
  }
}
