import 'package:flutter/material.dart';
import 'package:vchat/screens/home/personalChat.dart';

class MessageCard extends StatelessWidget {
  final String title;
  final IconData homeIcon;
  final Image image;
  final Color color;
  final String imagepath;
  final Function onTap;
  final String navigateTo;

  MessageCard(
      {this.homeIcon,
      @required this.title,
      this.color,
      this.imagepath,
      this.onTap,
      this.image,
      this.navigateTo});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ListTile(
      title: Row(
        children: <Widget>[
          homeIcon == null
              ? Container(
                  width: 58,
                  height: 58,
                  child: ClipOval(
                      child: Image(
                    image: AssetImage(imagepath),
                    fit: BoxFit.fill,
                  )))
              : Container(
                  width: width * 0.15,
                  height: height * 0.08,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: color),
                  child: Icon(
                    homeIcon,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        // onTap();
        // if (screenName == title)
        //   Navigator.pop(context);
        // else if (navigateTo != null)
        if (title == 'New Group' || title == "New Channel")
          Navigator.of(context).pushNamed('/selectingnewGroup');
        else
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => PersonalChat(
                  title: title, homeIcon: homeIcon, imagePath: imagepath)));
      },
    );
  }
}
