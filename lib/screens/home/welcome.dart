import 'package:flutter/material.dart';
import 'package:vchat/components/drawer.dart';

class WelcomeScreen extends StatefulWidget {
  _WelcomeScreen createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreen> {
  // String mobile = "";
  bool search = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: AppDrawer("Dashboard"),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
                  icon: new Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
          ),
          automaticallyImplyLeading: false,
          title: search
              ? TextField(
                  style: new TextStyle(
                    color: Colors.white,
                  ),
                  decoration: new InputDecoration(
                      prefixIcon: new Icon(Icons.search, color: Colors.white),
                      hintText: "Search...",
                      hintStyle: new TextStyle(color: Colors.white),
                      border: InputBorder.none),
                )
              : Text(
                  "vChat ",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
          actions: <Widget>[
            search
                ? SizedBox(
                    height: 0,
                    width: 0,
                  )
                : IconButton(
                    icon: Icon(Icons.search, color: Colors.white, size: 30),
                    onPressed: () {
                      // _showDialog(context);
                      setState(() {
                        search = true;
                      });
                    },
                  ),
            search
                ? IconButton(
                    icon: Icon(Icons.close, color: Colors.white, size: 30),
                    onPressed: () {
                      setState(() {
                        search = false;
                      });
                    },
                  )
                : IconButton(
                    icon: Icon(Icons.more_vert, color: Colors.white, size: 30),
                    onPressed: () {},
                  )
          ],
        ),
        // drawer: AppDrawer("Dashboard"),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/newMessage');
          },
          child: Icon(Icons.message, color: Colors.white),
          backgroundColor: Color.fromRGBO(239, 158, 52, 1),
        ),
        body: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: height * 0.28,
                  left: width * 0.60,
                  child: Container(
                    width: width * 0.15,
                    height: height * 0.10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(209, 210, 212, 1),
                    ),
                  )),
              Positioned(
                top: height * 0.28,
                left: width * 0.48,
                child: Container(
                  width: width * 0.15,
                  height: height * 0.10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(209, 210, 212, 1),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.white,
                        offset: new Offset(6.0, 0.0),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: height * 0.28,
                  left: width * 0.35,
                  child: Container(
                    width: width * 0.15,
                    height: height * 0.10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(209, 210, 212, 1),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.white,
                          offset: new Offset(6.0, 0.0),
                        )
                      ],
                    ),
                  )),
              Positioned(
                  top: height * 0.28,
                  left: width * 0.23,
                  child: Container(
                    width: width * 0.15,
                    height: height * 0.10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(209, 210, 212, 1),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.white,
                          offset: new Offset(6.0, 0.0),
                        )
                      ],
                    ),
                  )),
              Positioned(
                top: height * 0.40,
                left: width * 0.15,
                child: Container(
                  width: width * 0.70,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "James,",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' John,',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: " Smith ",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: " and 250 more Contanct on vChat App",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ]),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  color: Color.fromRGBO(247, 248, 249, 2),
                  width: width,
                  height: height * 0.12,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Start Chat",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(right: 20)),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward,
                              size: 30,
                            ),
                            color: Colors.blue,
                            onPressed: () {
                              Navigator.pushNamed(context, "/newMessage");
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
