import 'package:flutter/material.dart';
import 'package:vchat/components/messageBox.dart';
import 'package:vchat/components/messageBox2.dart';
import 'package:vchat/components/search.dart';
import 'package:vchat/screens/home/home.dart';
import 'package:vchat/screens/home/newMessage.dart';
import 'package:vchat/screens/home/personalChat.dart';
import 'package:vchat/screens/home/welcome.dart';
import 'package:vchat/screens/settings/addContact.dart';
import 'package:vchat/screens/settings/newGroup.dart';
import 'package:vchat/screens/settings/selectingNewGroup.dart';
import 'package:vchat/screens/settings/settings.dart';
import 'package:vchat/screens/splash/home.dart';
import 'package:vchat/screens/verification/phoneVerify.dart';
import 'package:vchat/screens/verification/verifyNumber.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    "/verify": (BuildContext context) => VerifyNumber(),
    "/phone": (BuildContext context) => PhoneVerify(),
    "/welcome": (BuildContext context) => WelcomeScreen(),
    "/settings": (BuildContext context) => Settings(),
    "/addContact": (BuildContext context) => AddContact(),
    "/newMessage": (BuildContext context) => NewMessage(),
    // "/personalChat": (BuildContext context) => PersonalChat(),
    "/home": (BuildContext context) => HomeScreen(),
    "/newGroup": (BuildContext context) => NewGroup(),
    "/selectingnewGroup": (BuildContext context) => SelectingNewGroup(),
  };
  ThemeData appTheme = ThemeData(
      primaryColor: Color.fromRGBO(90, 126, 254, 1),
      accentColor: Colors.red,
      textTheme: TextTheme(
          button: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      )));
  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Do App",
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: appTheme,
      routes: routes,
    ));
  }
}
