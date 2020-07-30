import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:tiktok_clone/SignupToEmail/signupphoneEmail.dart';
import 'package:tiktok_clone/SignupToPhoneEmailTabs/phonetab.dart';
import 'package:tiktok_clone/mycolors.dart';
import 'package:tiktok_clone/signup.dart';

class SignupToEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: emailHome(),
    );
  }
}

class emailHome extends StatefulWidget {
  @override
  _emailHomeState createState() => _emailHomeState();
}

class _emailHomeState extends State<emailHome> {
  Widget date() {
    return Container(
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext bc) => SignupPage()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Sign up",
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboton'),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 25.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "When's your birthday?",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboton',
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 25.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your birthday won't be shown publicly.",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboton',
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                            width: 60,
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1.0, color: Colors.red))),
                            child: Text(
                              "Jun",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 60,
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1.0, color: Colors.red))),
                            child: Text(
                              "Jul",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 60,
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Aug",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            width: 60,
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1.0, color: Colors.red))),
                            child: Text(
                              "17",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 60,
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1.0, color: Colors.red))),
                            child: Text(
                              "18",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 60,
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "19",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            width: 60,
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1.0, color: Colors.red))),
                            child: Text(
                              "2018",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                        Container(
                            width: 60,
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1.0, color: Colors.red))),
                            child: Text(
                              "2019",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        color: btn1,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext bc) =>
                                      SignUpPhoneEmail()));
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
