import 'package:flutter/material.dart';
import 'package:vchat/screens/settings/selectingNewGroup.dart';

class ChatTile extends StatefulWidget {
  final String heading;
  final String subtittle;
  final Image image;
  final IconData icon;
  final Color color;
  final Function onSelect;
  final Function onDeSelect;
  ChatTile(
      {this.heading,
      this.subtittle,
      this.image,
      this.icon,
      this.color,
      this.onSelect,
      this.onDeSelect});
  _ChatTile createState() => _ChatTile();
}

class _ChatTile extends State<ChatTile> {
  bool select = false;
  SelectedItem item;
  @override
  void initState() {
    super.initState();
    if (widget.image == null)
      item = SelectedItem(
          heading: widget.heading, data: widget.icon, color: widget.color);
    else
      item = SelectedItem(
          heading: widget.heading, data: widget.image, color: widget.color);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        ListTile(
          selected: select,
          leading: widget.image == null
              ? Container(
                  width: width * 0.15,
                  height: height * 0.10,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: widget.color),
                  child: Icon(
                    widget.icon,
                    color: Colors.white,
                    size: 35,
                  ),
                )
              : Container(
                  width: 58,
                  height: 58,
                  child: ClipOval(child: widget.image),
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
                    widget.heading,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  widget.subtittle,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          onLongPress: () {
            setState(() {
              select = !select;
              widget.onSelect(item);
            });
          },
          onTap: () {
            if (select) {
              setState(() {
                select = false;
                widget.onDeSelect(item);
              });
            }
          },
          trailing: select
              ? Icon(
                  Icons.check_circle,
                  color: Colors.orangeAccent,
                )
              : SizedBox(
                  height: 0,
                  width: 0,
                ),
        ),
        Container(
          width: width,
          height: 0.5,
          color: Colors.grey,
          margin: EdgeInsets.only(left: 96),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 15),
        )
      ],
    );
  }
}
