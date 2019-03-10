import 'package:flutter/material.dart';
import 'package:vchat/components/chatItem.dart';
import 'package:vchat/components/drawer.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
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
                // style: TextStyle(fontSize: 30, color: Colors.white),
                style: Theme.of(context).textTheme.display1,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/newMessage');
        },
        child: Icon(Icons.message, color: Colors.white),
        backgroundColor: Color.fromRGBO(239, 158, 52, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodNight",
                imagepath: 'assets/images/profile.jpg',
                date: "1/03/2019",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodMrng!",
                imagepath: 'assets/images/bike1.jpg',

                //date: "1/03/2019",
                time: "10.00AM",
                notification: "7",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodAftern!!!",
                imagepath: 'assets/images/car1.jpg',
                date: "1/03/2019",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodNight",
                imagepath: 'assets/images/bike2.jpeg',
                time: "9:04AM",
                notification: "3",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodNight",
                imagepath: 'assets/images/car2.jpeg',
                date: "Yesterday",
                ricon: Icons.volume_mute,
                notification: "5",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodNight",
                imagepath: 'assets/images/bike3.jpeg',
                date: "1/03/2019",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodNight",
                imagepath: 'assets/images/car3.jpg',
                date: "1/03/2019",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodNight",
                imagepath: 'assets/images/bike4.jpeg',
                date: "1/03/2019",
                ricon: Icons.volume_mute,
                notification: "5",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodNight",
                imagepath: 'assets/images/car4.jpeg',
                date: "1/03/2019",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodNight",
                imagepath: 'assets/images/bike5.jpg',
                date: "1/03/2019",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodNight",
                imagepath: 'assets/images/car5.jpeg',
                date: "21/02/2019",
                ricon: Icons.volume_mute,
                notification: "5",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodNight",
                imagepath: 'assets/images/vlogo.png',
                date: "1/03/2019",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodNight",
                imagepath: 'assets/images/profile.jpg',
                date: "1/03/2019",
                ricon: Icons.volume_mute,
                notification: "5",
              ),
              ChatItem(
                heading: "RajeshcoolDude",
                subtittle: "GoodNight",
                imagepath: 'assets/images/bike4.jpeg',
                date: "1/03/2019",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
