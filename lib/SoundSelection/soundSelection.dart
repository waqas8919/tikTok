import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/sound.dart';
import 'package:tiktok_clone/SoundSelection/soundslectiondetail.dart';

class SoundSelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SoundSelectHome(),
    );
  }
}

class SoundSelectHome extends StatefulWidget {
  @override
  _SoundSelectHomeState createState() => _SoundSelectHomeState();
}

class _SoundSelectHomeState extends State<SoundSelectHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              //Top Section
              Container(
                height: 100,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Sounds",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontFamily: 'Roboton',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "My Sounds",
                            style: TextStyle(
                                color: Colors.black12,
                                fontSize: 18.0,
                                fontFamily: 'Roboton',
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                                selectionHeightStyle: BoxHeightStyle.max,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    fillColor: Colors.black12,
                                    filled: true,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: Colors.black38,
                                    ),
                                    suffixIcon: Container(
                                      width: 10.0,
                                      height: 10.0,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 10.0),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black38),
                                      child: Icon(
                                        Icons.close,
                                        size: 18,
                                      ),
                                    ))),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext bc) =>
                                          SoundScreen()));
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //Top Section End---------------------------------------------------------->

              //2nd Section
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: SoundSelectList(),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
