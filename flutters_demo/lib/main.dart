import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:preticaldemo/UndefinedView.dart';
import 'package:preticaldemo/services/router.dart' as router;
import 'package:preticaldemo/spalsh_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EMP',
      theme: ThemeData(
        fontFamily: 'opensans',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: getInitialRoute(),
      onGenerateRoute: router.generateRoute,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => UndefinedView(
          name: settings.name,
        ),
      ),
    );
  }

  String getInitialRoute() {
    return SplashScreen.id;
  }
}
