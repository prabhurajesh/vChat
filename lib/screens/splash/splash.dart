import 'package:flutter/material.dart';
import 'package:vchat/components/dotbulider.dart';
import 'package:vchat/screens/splash/screenOne.dart';
import 'package:vchat/screens/splash/screenThree.dart';
import 'package:vchat/screens/splash/screenTwo.dart';

class SplashScreen extends StatefulWidget {
  final PageController controller;
  SplashScreen(this.controller);
  @override
  _SplashState createState() => _SplashState(controller);
}

class _SplashState extends State<SplashScreen> {
  final PageController controllerIndex;
  _SplashState(this.controllerIndex);
  double _position = 0;
  PageController controller;
  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: 0,
    );
    controller.addListener(() {
      setState(() {
        _position = controller.page;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        PageView(
          //scrollDirection: Axis.horizontal,
          controller: controller,
          children: <Widget>[
            ScreenOne(),
            ScreenTwo(),
            ScreenThree(),
          ],
        ),
        Positioned(
          top: height * 0.55,
          width: width,
          child: Center(
              child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 30,
                child: DotsIndicator(
                  controller: controller,
                  itemCount: 3,
                  color: Color.fromRGBO(88, 138, 252, 1),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Container(
                height: 50,
                width: 180,
                child: Center(
                  child: RaisedButton(
                    color: Color.fromRGBO(88, 138, 252, 1),
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 10, bottom: 10),
                    child: Text("START CHART",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                    onPressed: () {
                      controllerIndex.animateToPage(1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeOutSine);
                      // Navigator.pushNamed(context, "/verify");
                    },
                  ),
                ),
              ),
            ],
          )),
        )
      ],
    );
  }
}
