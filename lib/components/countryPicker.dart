import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';

class CountryPicker extends StatelessWidget {
  String _mobile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
          contentPadding: EdgeInsets.all(0),
          title: _buildCountryPickerDropdown()),
    );
  }

  _buildCountryPickerDropdown() => Row(
        children: <Widget>[
          CountryPickerDropdown(
            initialValue: 'IN',
            itemBuilder: _buildDropdownItem,
            onValuePicked: (Country country) {
              print("${country.name}");
            },
          ),
          SizedBox(
            width: 5.0,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(hintText: "Mobile"),
              keyboardType: TextInputType.number,
              validator: validateMobile,
              autovalidate: true,
            ),
          )
        ],
      );

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0,
            ),
            Text("+${country.phoneCode}(${country.isoCode})"),
          ],
        ),
      );
}
