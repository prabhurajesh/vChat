import 'package:flutter/material.dart';
import 'package:vchat/components/message.dart';

class NewMessage extends StatefulWidget {
  _NewMessage createState() => _NewMessage();
}

class _NewMessage extends State<NewMessage> {
  // String mobile = "";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "New Message ",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white, size: 30),
              onPressed: () {
                // _showDialog(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.add, color: Colors.white, size: 30),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  MessageCard(
                    title: "New Group",
                    color: Colors.green,
                    homeIcon: Icons.people,
                    onTap: () {},
                  ),
                  MessageCard(
                      title: "New Channel",
                      color: Colors.green,
                      homeIcon: Icons.people,
                      onTap: () {}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Contacts",
                  style: TextStyle(fontSize: 20, color: Colors.black)),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  MessageCard(
                    title: "Peter Caelsson",
                    color: Colors.grey,
                    //homeIcon: Icons.person,
                    imagepath: "assets/images/profile.jpg",
                  ),
                  MessageCard(
                    title: "Mary Johnson",
                    color: Colors.blueGrey,
                    homeIcon: Icons.person,
                  ),
                  MessageCard(
                    title: "Peter Caelsson",
                    color: Colors.redAccent,
                    //homeIcon: Icons.person,
                    imagepath: "assets/images/bike4.jpeg",
                  ),
                  MessageCard(
                    title: "Trevor Hansen",
                    color: Colors.green,
                    homeIcon: Icons.person,
                  ),
                  MessageCard(
                    title: "Janet Perkins",
                    color: Colors.lightBlue,
                    // homeIcon: Icons.person,
                    imagepath: "assets/images/car4.jpeg",
                  ),
                  MessageCard(
                    title: "Sachin Khot",
                    color: Colors.yellowAccent,
                    homeIcon: Icons.person,
                  ),
                  MessageCard(
                    title: "Rudra Partap",
                    color: Colors.blue,
                    // homeIcon: Icons.person,
                    imagepath: "assets/images/car5.jpeg",
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
