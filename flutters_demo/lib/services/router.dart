import 'package:flutter/material.dart';
import 'package:preticaldemo/UndefinedView.dart';
import 'package:preticaldemo/spalsh_screen.dart';
import 'package:preticaldemo/user/LoginScreen.dart';
import 'package:preticaldemo/user/RegisterScreen.dart';

// ignore: missing_return
Route<dynamic> generateRoute(RouteSettings settings) {
  Map<String, dynamic> arguments = {};
  if (settings.arguments != null) {
    arguments = settings.arguments as Map<String, dynamic>;
  }
  switch (settings.name) {
    case LoginScreen.id:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case SplashScreen.id:
      return MaterialPageRoute(
        builder: (context) => SplashScreen(),
      );
    case RegisterScreen.id:
      return MaterialPageRoute(
        builder: (context) => RegisterScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => UndefinedView(
          name: settings.name,
        ),
      );
  }
}
