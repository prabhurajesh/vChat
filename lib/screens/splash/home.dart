import 'package:flutter/material.dart';
import 'package:vchat/screens/home/welcome.dart';
import 'package:vchat/screens/splash/splash.dart';
import 'package:vchat/screens/verification/verifyNumber.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        controller: controller,
        children: <Widget>[
          SplashScreen(controller),
          VerifyNumber(),
          WelcomeScreen()
        ],
      ),
    );
  }
}
