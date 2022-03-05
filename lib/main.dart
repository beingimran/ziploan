import 'package:flutter/material.dart';
import 'package:zip/pages/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zip loan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), //route to splashscreen when app is started
    );
  }
}
