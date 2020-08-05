import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/SignupToEmail/password.dart';
import 'package:tiktok_clone/SignupToEmail/createUsername.dart';
import 'package:tiktok_clone/SignupToEmail/selectcountry.dart';
import 'package:tiktok_clone/SignupToEmail/entercode.dart';
import 'package:tiktok_clone/mycolors.dart';

class PhoneTab extends StatefulWidget {
  @override
  _PhoneTabState createState() => _PhoneTabState();
}

class _PhoneTabState extends State<PhoneTab> {
  var _countries = ['US +1', 'PK +92', 'AFG +93', 'IND +91'];
  var _countryItemSelected = 'PK +92';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60.0,
                ),
                Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black, width: 0.3))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext bc) =>
                                        SelectCountriesScreen()));
                          },
                          child: ButtonTheme(
                            minWidth: 40,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                elevation: 0,
                                items:
                                    _countries.map((String DropdownStringItem) {
                                  return DropdownMenuItem<String>(
                                    value: DropdownStringItem,
                                    child: Text(
                                      DropdownStringItem,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Roboton'),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String newValueSelected) {
                                  setState(() {
                                    this._countryItemSelected =
                                        newValueSelected;
                                  });
                                },
                                value: _countryItemSelected,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 12.0,
                          width: 1.5,
                          color: Colors.black12,
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: ("Phone Number"),
                                hintStyle: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Arimon')),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 20.0,
                ),
                
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "By continuing, you agree to TikTok's ",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 13.0,
                              fontFamily: 'RobotoMedium',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3,
                              height: 1.2,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 1.2),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 0.3, color: Colors.black))),
                            child: Text("Terms of",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                  letterSpacing: -0.5,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(bottom: 1.2),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 0.3, color: Colors.black))),
                            child: Text("Use",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                  letterSpacing: -0.5,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          Text(
                            " and confirm that you have read TikTok's",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 13.0,
                              fontFamily: 'RobotoMedium',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(bottom: 1.2),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 0.3, color: Colors.black))),
                            child: Text("Privacy Policy. ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                  fontFamily: 'Roboto',
                                  letterSpacing: -0.5,
                                  fontWeight: FontWeight.w600,
                                )),
                          ),
                          Text(
                            "If you sign up with SMS, SMS fees",
                            style: TextStyle(
                              color: Colors.black38,
                              fontSize: 13.0,
                              fontFamily: 'RobotoMedium',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "may apply.",
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 13.0,
                            fontFamily: 'RobotoMedium',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.3,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                
                SizedBox(
                  height: 25.0,
                ),
                Container(
                    height: 50,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            color: Colors.grey[200],
                            elevation: 0,
                            highlightColor: Colors.pink,
                            padding: EdgeInsets.symmetric(vertical: 13.0),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext bc) =>
                                          EnterCode()));
                            },
                            child: Text(
                              "Send code",
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 15.0,
                                  letterSpacing: -0.5,
                                  fontFamily: 'Arimon',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
