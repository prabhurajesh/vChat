import 'package:flutter/material.dart';
import 'package:vchat/screens/home/personalChat.dart';

class ChatItem extends StatelessWidget {
  final String heading;
  final String subtittle;
  final Image image;
  final String imagepath;
  final String time;
  final String date;
  final String notification;
  final IconData ficon;
  final IconData ricon;
  final Color color;

  ChatItem(
      {this.heading,
      this.subtittle,
      this.image,
      this.time,
      this.date,
      this.notification,
      this.ficon,
      this.ricon,
      this.color,
      this.imagepath});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        ListTile(
            contentPadding: EdgeInsets.all(2),
            leading: imagepath == null
                ? Container(
                    width: width * 0.15,
                    height: height * 0.10,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: color),
                    child: Icon(
                      ficon,
                      color: Colors.white,
                      size: 35,
                    ),
                  )
                : Container(
                    width: 58,
                    height: 58,
                    child: ClipOval(
                        child: Image(
                      image: AssetImage(imagepath),
                      fit: BoxFit.fill,
                    )),
                  ),
            title: Container(
              padding: EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      heading,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Text(
                    subtittle,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            trailing: Container(
              width: width * 0.17,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  time == null
                      ? SizedBox(height: 0, width: 0)
                      : Text(
                          time ?? "",
                          style: TextStyle(
                              color: Colors.lightGreen, fontSize: 12.0),
                        ),
                  date == null
                      ? SizedBox(height: 0, width: 0)
                      : Text(
                          date,
                          style: TextStyle(
                              color: Colors.lightGreen, fontSize: 12.0),
                        ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      ricon == null
                          ? SizedBox(height: 0, width: 0)
                          : Icon(ricon),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                      ),
                      notification == null
                          ? SizedBox(height: 0, width: 0)
                          : CircleAvatar(
                              backgroundColor: Colors.lightGreen,
                              radius: 10.0,
                              child: Text(
                                notification,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                            ),
                    ],
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => PersonalChat(
                      title: heading,
                      //homeIcon: homeIcon,
                      imagePath: imagepath)));
            }),
        Container(
          width: width,
          height: 0.5,
          color: Colors.grey,
          margin: EdgeInsets.only(left: 87),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 15),
        )
      ],
    );
  }
}
