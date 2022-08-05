import 'dart:async';

import 'package:flutter/material.dart';
import 'package:preticaldemo/user/LoginScreen.dart';
import 'package:preticaldemo/user/RegisterScreen.dart';

import 'package:preticaldemo/utils/config.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "SplashScreen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLogin = false;
  Config config = new Config();

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => navigation(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("assets/demo1.jpg")],
      ),
    );
  }

  navigation() async {
    Navigator.pushReplacementNamed(
      context,
      RegisterScreen.id
    );
  }
}
