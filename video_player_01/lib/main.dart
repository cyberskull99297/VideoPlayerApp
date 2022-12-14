import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:video_player_01/profile.dart';
import 'package:video_player_01/settings_screen.dart';
// import 'package:video_player_01/profile.dart';
import 'package:video_player_01/video_info.dart';

import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
