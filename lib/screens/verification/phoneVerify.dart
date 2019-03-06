import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class PhoneVerify extends StatefulWidget {
  _PhoneVerify createState() => _PhoneVerify();
}

class _PhoneVerify extends State<PhoneVerify> {
  String mobile = "------";
  String box1, box2, box3, box4;
  final FocusNode _node1 = FocusNode();
  final FocusNode _node2 = FocusNode();
  final FocusNode _node3 = FocusNode();
  final FocusNode _node4 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(" Phone Verification"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                //_showDialog(context);
                Navigator.pushNamed(context, "/welcome");
                // controllerIndex.animateToPage(1,
                //     duration: Duration(milliseconds: 500),
                //     curve: Curves.easeOutSine);
              },
            )
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Text("We've sent the code to the vChat app on your device.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 200,
                //height: 15.0,
                //margin: EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    box(_node1, _node2),
                    box(_node2, _node3),
                    box(_node3, _node4),
                    box(_node4, _node4),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Builder(builder: (context2) {
                return RaisedButton(
                  color: Color.fromRGBO(90, 126, 254, 1),
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    validateOtp(context2);
                  },
                );
              }),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Didn't get the code ?",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              )
            ])));
  }

  validateOtp(BuildContext context) {
    (box1 != null && box2 != null && box3 != null && box4 != null)
        ? Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text("OTP Verified")))
        : Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text("Enter OTP")));
  }

  Widget box(FocusNode currentNode, FocusNode nextNode) {
    String value;
    return Flexible(
      child: Container(
        margin: EdgeInsets.all(8.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            counterText: "",
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
          ),
          cursorColor: Colors.black,
          textAlign: TextAlign.center,
          focusNode: currentNode,
          maxLength: 1,
          maxLengthEnforced: true,
          onChanged: (input) {
            if (input.isEmpty)
              value = null;
            else {
              value = input;
              currentNode.unfocus();
              if (currentNode != _node4)
                FocusScope.of(context).requestFocus(nextNode);
            }
            if (currentNode == _node1)
              box1 = value;
            else if (currentNode == _node2)
              box2 = value;
            else if (currentNode == _node3)
              box3 = value;
            else if (currentNode == _node4) box4 = value;
            setState(() {});
          },
        ),
      ),
    );
  }
}
