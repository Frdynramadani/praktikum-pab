import 'package:activity_3/HomeScreen.dart';
import 'package:activity_3/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();

        final String? nbi = prefs.getString('nbi');
        if (nbi != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (build) {
              return HomeScreen();
            }),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (build) {
              return RegisterScreen();
            }),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 255, 139, 160),
        child: Center(
          child: Image.asset(
            'assets/prak2.png',
            scale: 5,
          ),
        ),
      ),
    );
  }
}
