import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:vchat/components/drawer_title.dart';
// import 'package:portal_app/services/google_signin.dart';
// import 'package:portal_app/services/shared_preferences.dart';

class AppDrawer extends StatelessWidget {
  final String screenName;

  AppDrawer(this.screenName);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 5),
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
                  padding: EdgeInsets.only(top: 5),
                ),
                Text(
                  "Rajesh Cool Dude",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                ),
                Text(
                  "+91 8897536459",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(80, 126, 245, 1),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 0.5, color: Colors.blueGrey))),
            child: DrawerTile(
              screenName: screenName,
              title: "Home",
              homeIcon: Icons.question_answer,
              navigateTo: "/home",
              onTap: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 0.3, color: Colors.blueGrey))),
            child: Column(
              children: <Widget>[
                DrawerTile(
                  screenName: screenName,
                  title: "Add Contact",
                  homeIcon: Icons.person_add,
                  navigateTo: "/addContact",
                  onTap: () {},
                ),
                DrawerTile(
                  screenName: screenName,
                  title: "New Group",
                  homeIcon: Icons.group,
                  navigateTo: "/selectingnewGroup",
                  onTap: () {},
                ),
                DrawerTile(
                  screenName: screenName,
                  title: "New Channel",
                  homeIcon: Icons.speaker,
                  navigateTo: "/assetsHistory",
                  onTap: () {},
                ),
              ],
            ),
          ),
          DrawerTile(
            screenName: screenName,
            title: "Contacts",
            homeIcon: Icons.contacts,
            navigateTo: "/assetsHistory",
            onTap: () {},
          ),
          DrawerTile(
            screenName: screenName,
            title: "Settings",
            homeIcon: Icons.settings,
            navigateTo: "/settings",
            onTap: () {},
          ),
          DrawerTile(
            onTap: () {},
            screenName: screenName,
            title: "Logout",
            homeIcon: Icons.power_settings_new,
          ),
        ],
      ),
    );
  }
}
