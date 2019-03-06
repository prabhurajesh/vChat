import 'package:flutter/material.dart';

import 'package:vchat/components/chatTile.dart';

class SelectingNewGroup extends StatefulWidget {
  _SelectingNewGroup createState() => _SelectingNewGroup();
}

class _SelectingNewGroup extends State<SelectingNewGroup> {
  // String mobile = "";
  var items = [];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "New Group",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.check, color: Colors.white, size: 30),
              onPressed: () {
                // _showDialog(context);
                Navigator.pushNamed(context, '/newGroup');
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Card(
                child: Container(
                    height: items.length > 0 ? height * 0.10 : 0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 120,
                          height: 30,
                          child: Row(
                            children: <Widget>[
                              items[index].data is Image
                                  ? Container(
                                      width: 40,
                                      height: 40,
                                      child: ClipOval(
                                        child: items[index].data,
                                      ))
                                  : Container(
                                      width: 50,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: items[index].color),
                                      child: Icon(items[index].data)),
                              Padding(
                                padding: EdgeInsets.only(left: 3),
                              ),
                              Text(items[index].heading)
                            ],
                          ),
                        );
                      },
                    )),
              ),
              Card(
                  child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                  ),
                  ChatTile(
                    heading: "Abhay B",
                    subtittle: "Last Seen jun 8 at 10:39 AM",
                    icon: Icons.person,
                    color: Colors.red,
                    onSelect: (item) {
                      setState(() {
                        items.add(item);
                      });
                    },
                    onDeSelect: (item) {
                      setState(() {
                        items.remove(item);
                      });
                    },
                  ),
                  ChatTile(
                    heading: "swagath",
                    subtittle: "Last Seen jun 15 at 9:39 AM",
                    icon: Icons.person,
                    color: Colors.blue,
                    onSelect: (item) {
                      setState(() {
                        items.add(item);
                      });
                    },
                    onDeSelect: (item) {
                      setState(() {
                        items.remove(item);
                      });
                    },
                  ),
                  ChatTile(
                    heading: "vikaram",
                    subtittle: "Last Seen jun 15 at 10:39 AM",
                    icon: Icons.person,
                    color: Colors.red,
                    onSelect: (item) {
                      setState(() {
                        items.add(item);
                      });
                    },
                    onDeSelect: (item) {
                      setState(() {
                        items.remove(item);
                      });
                    },
                  ),
                  ChatTile(
                    heading: "Abhishek",
                    subtittle: "Last Seen jun 8 at 10:39 AM",
                    icon: Icons.person,
                    color: Colors.green,
                    onSelect: (item) {
                      setState(() {
                        items.add(item);
                      });
                    },
                    onDeSelect: (item) {
                      setState(() {
                        items.remove(item);
                      });
                    },
                  ),
                  ChatTile(
                    heading: "Prabhu",
                    subtittle: "Last Seen jun 8 at 10:39 AM",
                    // icon: Icons.person,
                    image: Image.asset(
                      'assets/images/bike4.jpeg',
                      fit: BoxFit.fill,
                    ),
                    color: Colors.purple,
                    onSelect: (item) {
                      setState(() {
                        items.add(item);
                      });
                    },
                    onDeSelect: (item) {
                      setState(() {
                        items.remove(item);
                      });
                    },
                  ),
                  ChatTile(
                    heading: "Rajesh ",
                    subtittle: "Last Seen jun 8 at 10:39 AM",
                    //icon: Icons.person,
                    image: Image.asset(
                      'assets/images/car2.jpeg',
                      fit: BoxFit.fill,
                    ),
                    color: Colors.red,
                    onSelect: (item) {
                      setState(() {
                        items.add(item);
                      });
                    },
                    onDeSelect: (item) {
                      setState(() {
                        items.remove(item);
                      });
                    },
                  ),
                ],
              ))
            ])));
  }
}

class SelectedItem {
  final String heading;

  var data;
  final Color color;

  SelectedItem({this.heading, this.data, this.color});
}
