import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zip/components/constant.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _nagivator();
  }

  _nagivator() async {
    await Future.delayed(
        Duration(milliseconds: 1500), () {}); // wait for 1.5 sec
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(color: BrandColorWhite),
        child: Center(
            child: Container(
          height: 100,
          width: 200,
          child: Image.asset("assets/images/Vector.png"),
        )),
      ),
    );
  }
}
