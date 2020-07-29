
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'mycolors.dart';
import 'package:tiktok_clone/tiktko_Interface.dart';
import 'package:tiktok_clone/discover.dart';
import 'package:tiktok_clone/record.dart';
import 'package:tiktok_clone/inbox.dart';
import 'package:tiktok_clone/me.dart';
import 'package:tiktok_clone/settings.dart';
import 'package:tiktok_clone/Inbox1/inboxdata.dart';
class inboxpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: InboxHome(),
    );
  }
}

class InboxHome extends StatefulWidget {
  @override
  _InboxHomeState createState() => _InboxHomeState();
}

class _InboxHomeState extends State<InboxHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 60,
               decoration: BoxDecoration(
                 border: Border(
                   bottom: BorderSide(
                     width: 0.5,
                     color: Colors.black38
                   )
                 )
               ),
               padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "All activity",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: allActivity,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              fontFamily: 'Arimon'
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: allActivity_icon,
                        )
                      ],
                    ),
                      Icon(
                        Icons.share,
                        color: inbox_share_icon,
                    ),
                  ],
                ),
              ),
               SizedBox(
                 height: 10.0,
               ),
               //Middle Section
              Expanded(
                child:Container(
                  child:  InboxOneData(),
                )
              ),


              //Bottom Section
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(
                            width: 0.5,
                            color:Colors.grey
                        )
                    )
                ),
                height: 80.0,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>tiktokInterface()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ImageIcon(
                                AssetImage("assets/icons/home.png"),
                                size: 25.0,
                                color: Colors.black54,
                              ),
                              Text("Home",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'Roboton',
                                    fontSize: 10.0
                                ),)
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: (){
                            // ignore: missing_return
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>discover()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ImageIcon(
                                AssetImage("assets/icons/search.png"),
                                size: 25.0,
                                color: Colors.black54,
                              ),
                              Text("Discover",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontFamily: 'Roboton',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0
                                  )
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Record()));
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset("assets/icons/dicovAdd.png",height: 30,)
                              ]
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>inboxpage()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ImageIcon(
                                AssetImage("assets/icons/inbox.png"),
                                size: 25.0,
                                color: Colors.black,
                              ),
                              Text("Inbox",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboton',
                                      fontSize: 10.0
                                  )
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>me()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ImageIcon(
                                AssetImage("assets/icons/me.png"),
                                size: 25.0,
                                color: Colors.grey,
                              ),
                              Text("Me",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Roboton',
                                    fontSize: 10.0
                                ),)
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
