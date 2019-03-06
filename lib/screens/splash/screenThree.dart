import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Container(
                height: 150,
                width: 150,
                child: Image(image: AssetImage("assets/images/vlogo.png"))),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
            ),
            Text(
              "vChat",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
            ),
            RichText(
              text: TextSpan(
                  text: "The world's ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'fastest',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    TextSpan(text: " messaging app.")
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5),
            ),
            RichText(
                text: TextSpan(
                    text: "Its",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                    children: <TextSpan>[
                  TextSpan(
                      text: " free",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  TextSpan(
                      text: " and",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  TextSpan(
                      text: " Secure ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ])),
            Padding(
              padding: EdgeInsets.only(bottom: 250),
            ),
          ]),
        ),
      ),
    );
  }
}
