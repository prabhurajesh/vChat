import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  _Settings createState() => _Settings();
}

class _Settings extends State<Settings> {
  // String mobile = "";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white, size: 30),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            height: 1.5 * height,
          ),
          Positioned(
            child: Card(
              margin: EdgeInsets.all(0),
              elevation: 5,
              child: Container(
                color: Color.fromRGBO(90, 126, 254, 1),
                height: height * 0.17,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/profile.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Rajesh Cool Dude",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            Text(
                              "Online",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.18,
            child: Column(
              children: <Widget>[
                Card(
                  child: Container(
                    height: height * 0.35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                              "Info",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.09,
                          width: width,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5, color: Colors.blueGrey))),
                          child: ListTile(
                            title: Text(
                              "+91 8897536459",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            subtitle: Text(
                              "Phone",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[700]),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.10,
                          width: width,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5, color: Colors.blueGrey))),
                          child: ListTile(
                            title: Text(
                              "Rajesh Cool Dude",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            subtitle: Text(
                              "Username",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[700]),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.10,
                          width: width,
                          child: ListTile(
                            title: Text(
                              "None",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            subtitle: Text(
                              "Bio",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[700]),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                Card(
                  child: Container(
                    height: height * 0.61,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                              "Settings",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.08,
                          width: width,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5, color: Colors.blueGrey))),
                          child: ListTile(
                            title: Text(
                              "Language",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            trailing: Text("English",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blue)),
                          ),
                        ),
                        Container(
                          height: height * 0.08,
                          width: width,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5, color: Colors.blueGrey))),
                          child: ListTile(
                            title: Text(
                              "Theme",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            trailing: Text("Default",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blue)),
                          ),
                        ),
                        Container(
                          height: height * 0.08,
                          width: width,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5, color: Colors.blueGrey))),
                          child: ListTile(
                            title: Text(
                              "Chat Wallpaper",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.08,
                          width: width,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5, color: Colors.blueGrey))),
                          child: ListTile(
                            title: Text(
                              "Data & Storage",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.08,
                          width: width,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5, color: Colors.blueGrey))),
                          child: ListTile(
                            title: Text(
                              "Privacy and Security",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.08,
                          width: width,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5, color: Colors.blueGrey))),
                          child: ListTile(
                            title: Text(
                              "Notification and Sounds",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.08,
                          width: width,
                          child: ListTile(
                            title: Text(
                              "Messages text Size ",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            trailing: Text("14",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blue)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                Card(
                  child: Container(
                    height: height * 0.21,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                              "Support",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.blue),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.08,
                          width: width,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 0.5, color: Colors.blueGrey))),
                          child: ListTile(
                            title: Text(
                              "FAQ",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.08,
                          width: width,
                          child: ListTile(
                            title: Text(
                              "Privacy Policy",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: height * 0.13,
            right: 20,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(246, 247, 248, 1),
              ),
              child: IconButton(
                icon: Icon(Icons.camera_alt, size: 30, color: Colors.grey[700]),
                onPressed: () {},
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
