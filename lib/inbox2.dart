import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'mycolors.dart';
import 'package:tiktok_clone/friend.dart';
class inbox2screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Inbox2Home(),
    );
  }
}

class Inbox2Home extends StatefulWidget {
  @override
  _Inbox2HomeState createState() => _Inbox2HomeState();
}

class _Inbox2HomeState extends State<Inbox2Home> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              //Top Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 70.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Material(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>FriendScreen()));
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: inbox2_icon,
                            size: 30.0,
                          ),
                        ),
                      ),
                      Text(
                        "FiZza_official",
                        style: TextStyle(
                          color: inbox2TopName_txt,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          fontFamily: 'Arimon',
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: inbox2Option_icon,
                        size: 30.0,
                      )
                    ],
                  ),
                ),
              ),

              //Divider
              Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.grey,
              ),
              //Middle Section

              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 12.0,
                        ),

                        Text(
                          "Yestarday",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontFamily: 'Roboton',
                            color: inbox2_timeIndicator_txt,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                       Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children:<Widget>[
                             Container(
                               padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                               decoration: BoxDecoration(
                                   color: inbox2_sendmsg_bg,
                                   borderRadius: BorderRadius.circular(5.0)
                               ),
                               child: Text(
                                 "Hey how was your day??",
                                 style: TextStyle(
                                   fontFamily: 'Roboton',
                                   fontSize: 12.0,
                                   color: inbox2_sendmsg_txt,
                                   decoration: TextDecoration.none,
                                 ),
                               ),
                             ),
                           SizedBox(
                             width: 20.0,
                           ),
                             Container(
                               width: 50.0,
                               height: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                             )
                           ],
                         ),

                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: inbox2_resivemsg_bg,
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Text(
                                "Good how was your??",
                                style: TextStyle(
                                  fontFamily: 'Roboton',
                                  fontSize: 12.0,
                                  color: inbox2_resivemsg_txt,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                       children: <Widget>[
                         Container(
                           width: 200.0,
                           padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                           decoration: BoxDecoration(
                               color: inbox2_sendmsg_bg,
                               borderRadius: BorderRadius.circular(5.0)
                           ),
                           child: Text(
                             "Good and mine was pretty good better now tho!",
                             style: TextStyle(
                               fontFamily: 'Roboton',
                               fontSize: 12.0,
                               color: inbox2_sendmsg_txt,
                               decoration: TextDecoration.none,
                             ),
                             maxLines: 2,
                           ),
                         ),
                         SizedBox(
                           width: 20.0,
                         ),
                         Container(
                           width: 50.0,
                           height: 50.0,
                           decoration: BoxDecoration(
                             color: Colors.pink,
                             borderRadius: BorderRadius.circular(50.0),
                           ),
                         )
                       ],
                       ),
                        SizedBox(
                          height: 12.0,
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                            decoration: BoxDecoration(
                                color: inbox2_resivemsg_bg,
                                borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: Text(
                              "Why??",
                              style: TextStyle(
                                fontFamily: 'Roboton',
                                fontSize: 12.0,
                                color: inbox2_resivemsg_txt,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                        SizedBox(
                          height: 12.0,
                        ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: <Widget>[
                           Container(
                             width: 200.0,
                             padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                             decoration: BoxDecoration(
                                 color: inbox2_sendmsg_bg,
                                 borderRadius: BorderRadius.circular(5.0)
                             ),
                             child: Text(
                               "Awwww why are you so sweet???",
                               style: TextStyle(
                                 fontSize: 12.0,
                                 fontFamily: 'Roboton',
                                 color: inbox2_sendmsg_txt,
                                 decoration: TextDecoration.none,
                               ),
                               maxLines: 2,
                             ),
                           ),
                           SizedBox(
                             width: 20.0,
                           ),
                           Container(
                             width: 50.0,
                             height: 50.0,
                             decoration: BoxDecoration(
                               color: Colors.pink,
                               borderRadius: BorderRadius.circular(50.0),
                             ),
                           )
                         ],
                       ),
                        SizedBox(
                          height: 12.0,
                        ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget>[
                           Container(
                             width: 50.0,
                             height: 50.0,
                             decoration: BoxDecoration(
                               color: Colors.pink,
                               borderRadius: BorderRadius.circular(50.0),
                             ),
                           ),
                           SizedBox(
                             width: 20.0,
                           ),
                           Container(
                             width: 250.0,
                             padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                             decoration: BoxDecoration(
                                 color: inbox2_resivemsg_bg,
                                 borderRadius: BorderRadius.circular(5.0)
                             ),
                             child: Text(
                               "I don't know? That's like asking why are you so beautiful?",
                               style: TextStyle(
                                 fontSize: 12.0,
                                 fontFamily: 'Roboton',
                                 color: inbox2_resivemsg_txt,
                                 decoration: TextDecoration.none,
                               ),
                               maxLines: 3,
                             ),
                           ),
                         ],
                       ),
                        SizedBox(
                          height: 12.0,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: inbox2_resivemsg_bg,
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Text(
                                "Me asking**",
                                style: TextStyle(
                                  fontFamily: 'Roboton',
                                  fontSize: 12.0,
                                  color: inbox2_resivemsg_txt,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 12.0,
                        ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: <Widget>[
                           Container(
                             width: 250.0,
                             padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                             decoration: BoxDecoration(
                                 color: inbox2_sendmsg_bg,
                                 borderRadius: BorderRadius.circular(5.0)
                             ),
                             child: Text(
                               "I dont't know! But I do not know that I couldn't ask for a better guy!!",
                               style: TextStyle(
                                 fontSize: 12.0,
                                 fontFamily: 'Roboton',
                                 color: inbox2_sendmsg_txt,
                                 decoration: TextDecoration.none,
                               ),
                               maxLines: 3,
                             ),
                           ),
                           SizedBox(
                             width: 20.0,
                           ),
                           Container(
                             width: 50.0,
                             height: 50.0,
                             decoration: BoxDecoration(
                               color: Colors.pink,
                               borderRadius: BorderRadius.circular(50.0),
                             ),
                           )
                         ],
                       ),
                        SizedBox(
                          height: 12.0,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Container(
                              width: 250.0,
                              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                              decoration: BoxDecoration(
                                  color: inbox2_resivemsg_bg,
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Text(
                                "Awwww you're so sweet! I couldn't ask for a better girl in this world",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Roboton',
                                  color: inbox2_resivemsg_txt,
                                  decoration: TextDecoration.none,
                                ),
                                maxLines: 3,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.grey,
              ),
              //Bottom Section
             Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 70.0,
                    child: Column(
                      children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                flex:2,
                                child: Material(
                                  color: Colors.transparent,
                                  child: TextField(

                                    autofocus: true,
                                    decoration: InputDecoration.collapsed(
                                      hintText: "Send a message",
                                      hintStyle: TextStyle(
                                          color: inbox2_textfield_text,
                                          fontFamily: 'Roboton',
                                          fontSize: 18.0
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Icon(Icons.insert_emoticon,
                              color: inbox2_textfield_icon,)
                            ],
                          )

                      ],
                    ),
                  ),
                ),


            ],
          ),
        ),
      ),
    );
  }
}
