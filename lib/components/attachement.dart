import 'package:flutter/material.dart';
import 'package:vchat/components/attachmentIcons.dart';

class Attachment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.all(0),
      child: Container(
          width: width,
          height: height * 0.25,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    AttachmentIcons(
                      homeIcon: Icons.camera_alt,
                      title: "Camera",
                      color: Colors.purpleAccent,
                    ),
                    AttachmentIcons(
                      homeIcon: Icons.filter,
                      title: "Gallery",
                      color: Colors.orange,
                    ),
                    AttachmentIcons(
                      homeIcon: Icons.headset,
                      title: "Audio",
                      color: Colors.yellowAccent,
                    ),
                  ]),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  AttachmentIcons(
                    homeIcon: Icons.location_on,
                    title: "Location",
                    color: Colors.orange,
                  ),
                  AttachmentIcons(
                    homeIcon: Icons.person,
                    title: "Contact",
                    color: Colors.purple,
                  ),
                  AttachmentIcons(
                    homeIcon: Icons.mail,
                    title: "File",
                    color: Colors.red,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
