import 'package:flutter/material.dart';
import 'package:flutters_clima/screen/loading_screen.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home:LoadingScreen(),
    );
  }
}