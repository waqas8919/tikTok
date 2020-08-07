import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/SignupToEmail/createUsername.dart';
import 'package:tiktok_clone/SignupToEmail/password.dart';
import 'package:tiktok_clone/SignupToEmail/signupphoneEmail.dart';

class EnterCode extends StatefulWidget {
  @override
  _EnterCodeState createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EnterCodeHome(),
    );
  }
}

class EnterCodeHome extends StatefulWidget {
  @override
  _EnterCodeHomeState createState() => _EnterCodeHomeState();
}

class _EnterCodeHomeState extends State<EnterCodeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext bc) => SignUpPhoneEmail()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        // actions: <Widget>[
        //   IconButton(
        //     onPressed: () {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //               builder: (BuildContext bc) => PasswordScreen()));
        //     },
        //     icon: Icon(
        //       Icons.monetization_on,
        //       color: Colors.grey,
        //     ),
        //   )
        // ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter 4-digit code",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Arimon',
                      fontSize: 25),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your code was sent to +13238800032",
                  style: TextStyle(
                      color: Colors.black38,
                      fontFamily: 'Roboton',
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                height: 50.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        minLines: 1,
                        maxLength: 1,
                        selectionHeightStyle: BoxHeightStyle.tight,
                        decoration: InputDecoration(
                            helperStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextField(
                        minLines: 1,
                        maxLength: 1,
                        decoration: InputDecoration(
                            helperStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextField(
                        minLines: 1,
                        maxLength: 1,
                        decoration: InputDecoration(
                            helperStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: TextField(
                        minLines: 1,
                        maxLength: 1,
                        decoration: InputDecoration(
                            helperStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Resend code 57s",
                  style: TextStyle(color: Colors.black54, letterSpacing: 0.5),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Container(
                    height: 70,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            color: Colors.pink,
                            elevation: 0,
                            highlightColor: Colors.pink,
                            padding: EdgeInsets.symmetric(vertical: 13.0),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext bc) =>
                                          UserNameScreen()));
                            },
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  letterSpacing: -0.5,
                                  fontFamily: 'Arimon',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
