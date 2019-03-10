import 'package:flutter/material.dart';

class AttachmentIcons extends StatelessWidget {
  final String title;
  final IconData homeIcon;
  final Color color;
  final String navigateTo;
  final Function onTap;

  AttachmentIcons({
    @required this.homeIcon,
    @required this.title,
    this.color,
    this.navigateTo,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        Container(
          width: width * 0.15,
          height: height * 0.09,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          child: Icon(
            homeIcon,
            color: Colors.white,
            size: 35,
          ),
        ),
        Text(title),
      ],
    );
  }
}
