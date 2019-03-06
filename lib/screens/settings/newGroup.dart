import 'package:flutter/material.dart';
import 'package:vchat/components/chatTile.dart';

class NewGroup extends StatefulWidget {
  _NewGroup createState() => _NewGroup();
}

class _NewGroup extends State<NewGroup> {
  // String mobile = "";
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          width: width * 0.15,
                          height: height * 0.10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.purple),
                          child: Icon(
                            Icons.people,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.68,
                        margin: EdgeInsets.only(left: width * 0.05),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Group Name",
                            hintStyle: TextStyle(
                                fontSize: 20, color: Colors.grey[700]),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Members",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    Text("03",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                  ],
                ),
              ),
              Card(
                  child: Column(
                children: <Widget>[
                  ChatTile(
                    heading: "Abhay B",
                    subtittle: "Last Seen jun 8 at 10:39 AM",
                    icon: Icons.person,
                    color: Colors.red,
                  ),
                  ChatTile(
                    heading: "Abhay B",
                    subtittle: "Last Seen jun 15 at 9:39 AM",
                    icon: Icons.person,
                    color: Colors.blue,
                  ),
                  ChatTile(
                    heading: "Abhay B",
                    subtittle: "Last Seen jun 15 at 10:39 AM",
                    icon: Icons.person,
                    color: Colors.red,
                  ),
                  ChatTile(
                    heading: "Abhay B",
                    subtittle: "Last Seen jun 8 at 10:39 AM",
                    icon: Icons.person,
                    color: Colors.green,
                  ),
                  ChatTile(
                    heading: "Abhay B",
                    subtittle: "Last Seen jun 8 at 10:39 AM",
                    icon: Icons.person,
                    color: Colors.purple,
                  ),
                  ChatTile(
                    heading: "Abhay B",
                    subtittle: "Last Seen jun 8 at 10:39 AM",
                    icon: Icons.person,
                    color: Colors.red,
                  ),
                ],
              ))
            ])));
  }
}
