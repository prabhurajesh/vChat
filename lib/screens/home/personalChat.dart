import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:vchat/components/attachement.dart';
import 'package:vchat/components/messageBox.dart';
import 'package:vchat/components/messageBox2.dart';

class PersonalChat extends StatefulWidget {
  final String title;
  final IconData homeIcon;
  final String imagePath;
  PersonalChat({this.title, this.homeIcon, this.imagePath});
  _PersonalChat createState() => _PersonalChat();
}

class _PersonalChat extends State<PersonalChat> {
  List<Message> messages = [];
  @override
  void initState() {
    super.initState();
    control = new TextEditingController();
    messages.add(Message(user: 2, info: "Hi"));
    messages.add(Message(user: 2, info: "How are you"));

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        print("visible $visible");
        setState(() {
          vis = visible;
        });
      },
    );
  }

  bool vis = false;
  bool attach = false;

  String text;
  // String mobile = "";
  TextEditingController control;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print("object  $messages");
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(width, 65),
          child: AppBar(
            titleSpacing: 0.0,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                widget.homeIcon == null
                    ? Container(
                        width: 50,
                        height: 50,
                        child: ClipOval(
                            child: Image(
                          image: AssetImage(widget.imagePath),
                          fit: BoxFit.fill,
                        )))
                    : Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                        child: Icon(widget.homeIcon)),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 4),
                      child: Text(
                        widget.title,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Text(
                      "Last seen today 11:00 AM ",
                      style: TextStyle(color: Colors.white54, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.more_vert, color: Colors.white, size: 30),
                onPressed: () {},
              )
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                itemCount: messages.length,
                //reverse: true,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ShowMessage(index);
                },
              ),
            ),
            Container(
                child: attach
                    ? Attachment()
                    : SizedBox(
                        height: 0,
                        width: 0,
                      )),
            Container(
              width: width,
              // height: height * 0.20,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration:
                  BoxDecoration(border: Border(top: BorderSide(width: 0.5))),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.tag_faces,
                        size: 30,
                        color: Colors.grey[700],
                      ),
                      onPressed: () {},
                    ),
                    Container(
                      //height: height * 0.20,
                      width: width * 0.60,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Type a Message",
                            border: InputBorder.none),
                        // autofocus: true,
                        controller: control,
                        onSubmitted: (str) {
                          str == ""
                              ? SizedBox(
                                  height: 0,
                                  width: 0,
                                )
                              : //messages.add(str);
                              messages.add(Message(user: 1, info: str));
                          text = str;
                          control.clear();
                        },
                      ),
                    ),
                    vis
                        ? SizedBox(
                            width: 0,
                            height: 0,
                          )
                        : IconButton(
                            icon: Icon(
                              Icons.attach_file,
                              size: 30,
                              color: Colors.grey[700],
                            ),
                            onPressed: () {
                              setState(() {
                                attach = !attach;
                              });
                            },
                          ),
                    vis
                        ? SizedBox(
                            width: 0,
                            height: 0,
                          )
                        : IconButton(
                            icon: Icon(
                              Icons.mic,
                              size: 30,
                              color: Colors.grey[700],
                            ),
                            onPressed: () {},
                          ),
                    vis
                        ? Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: IconButton(
                              icon: Icon(Icons.send,
                                  size: 30, color: Colors.blueAccent),
                              onPressed: () {
                                String text = control.text;
                                text == ""
                                    ? SizedBox(
                                        height: 0,
                                        width: 0,
                                      )
                                    : setState(() {
                                        //messages.add(text);

                                        messages
                                            .add(Message(user: 1, info: text));

                                        control.clear();
                                      });
                              },
                            ))
                        : SizedBox(
                            width: 0,
                            height: 0,
                          )
                  ]),
            ),
          ],
        ));
  }

  Widget ShowMessage(int index) {
    return messages[index].user == 1
        ? Padding(
            padding: const EdgeInsets.only(left: 150),
            child: MessageBox(text: messages[index].info))
        : Padding(
            padding: const EdgeInsets.only(right: 200),
            child: MessageBox2(text: messages[index].info),
          );
  }
}

class Message {
  int user;
  String info;
  Message({this.user, this.info});
}
