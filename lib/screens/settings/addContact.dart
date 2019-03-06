import 'package:flutter/material.dart';
import 'package:vchat/components/countryPicker.dart';

class AddContact extends StatefulWidget {
  _AddContact createState() => _AddContact();
}

class _AddContact extends State<AddContact> {
  String mobile = "";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Add Contanct",
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                //_showDialog(context);
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                      width: width * 0.20,
                      height: height * 0.15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(209, 210, 212, 1),
                      ),
                      child: Icon(Icons.person, size: 60, color: Colors.white)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                TextFormField(
                    decoration: InputDecoration(
                        hintText: " First Name (Required)",
                        hintStyle: TextStyle(color: Colors.black)),
                    keyboardType: TextInputType.text),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                TextFormField(
                    decoration: InputDecoration(
                        hintText: " Last Name ",
                        hintStyle: TextStyle(color: Colors.black)),
                    keyboardType: TextInputType.text),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                // TextFormField(
                //   decoration: InputDecoration(),
                //   keyboardType: TextInputType.text,
                //   initialValue: " India",
                // ),
                // Padding(
                //   padding: EdgeInsets.only(bottom: 15),
                // ),
                Container(width: width, height: 100, child: CountryPicker()),
              ],
            ),
          ),
        ));
  }
}
