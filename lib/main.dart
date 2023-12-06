// import 'package:activity_3/RegisterScreen.dart';
// import 'package:activity_3/BottomNavigation.dart';
// import 'package:activity_3/HomeScreen.dart';
// import 'package:activity_3/PinScreen.dart';
import 'package:activity_3/SplashScreen.dart';
// import 'package:activity_3/SplashScreen.dart';
// import 'package:activity_3/PlaylistScreen.dart';
// import 'package:activity_3/ProfileScreen.dart';
// import 'package:activity_3/SplashScreen.dart';
// import 'package:activity_3/SplashScreen.dart';
// import 'package:activity_3/PlaylistScreen.dart';
// import 'package:activity_3/RegisterScreen.dart';
// import 'package:activity_3/SplashScreen.dart';
import 'package:flutter/material.dart';
// import 'package:activity_3/RegisterScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
