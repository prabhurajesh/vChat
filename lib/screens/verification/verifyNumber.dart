import 'package:flutter/material.dart';
import 'package:vchat/components/countryPicker.dart';

class VerifyNumber extends StatefulWidget {
  _VerifyNumber createState() => _VerifyNumber();
}

class _VerifyNumber extends State<VerifyNumber> {
  String mobile = "";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Verifying your Number "),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              _showDialog(context);
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            // TextField(
            //   decoration: InputDecoration(labelText: 'Country'),
            //   keyboardType: TextInputType.text,
            // ),
            SizedBox(
              height: 25,
            ),
            Container(width: width, height: 100, child: CountryPicker()),
          ],
        ),
      ),
    );
  }
}

String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
  if (value.length != 10)
    return 'Mobile Number must be of 10 digit';
  else
    return null;
}

void _showDialog(context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(
            "vChat",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          content: new Text(
            "Please allow vChat to recieve calls and SMS so that we can automatically enter your code for you.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            //textAlign: TextAlign.center,
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/phone");
              },
            ),
          ],
        );
      });
}
