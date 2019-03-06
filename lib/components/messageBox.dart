import 'package:flutter/material.dart';
import 'package:path/path.dart';

class MessageBox extends StatelessWidget {
  String text;

  MessageBox({this.text});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CustomPaint(
      painter: MyPainter(),
      child:
          // color: Colors.red,
          // width: width - 100,
          // height: 100,
          // height: height * .5,
          Padding(
        padding: EdgeInsets.only(left: 10, bottom: 10, top: 10, right: 20),
        child: Container(
          constraints: BoxConstraints(maxWidth: width * 0.3),
          decoration: BoxDecoration(
              color: Colors.blue,
              // border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // List<Offset> triangle = [
    //   Offset(size.width - size.width * 0.09, size.height - size.height * 0.8),
    //   Offset(size.width - size.width * 0.07, size.height - size.height * 0.45),
    //   Offset(size.width - size.width * 0.01, size.height - size.height * 0.4),
    // ];
    List<Offset> tr = [
      Offset(size.width - 35, size.height - 10),
      Offset(size.width, size.height - 10),
      Offset(size.width - 35, size.height - 30)
    ];

    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path2 = Path()..addPolygon(tr, true);
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
