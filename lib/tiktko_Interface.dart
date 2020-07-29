import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mycolors.dart';
import 'package:tiktok_clone/discover.dart';
import 'package:tiktok_clone/record.dart';
import 'package:tiktok_clone/inbox.dart';
import 'package:tiktok_clone/me.dart';
class tiktokInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyInterface(),
    );
  }
}
class MyInterface extends StatefulWidget {
  @override
  _MyInterfaceState createState() => _MyInterfaceState();
}

class _MyInterfaceState extends State<MyInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          //Top Section
          Container(
            height: 100.0,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Text(
                 "Following",
                 style: TextStyle(
                   fontSize: 20.0,
                   fontFamily: "Arimon",
                   color: followingForyou_tx,
                 ),
               ),
            Container(
              height: 8.0,
              width: 1.5,
              color: Colors.white,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            ),
                Text(
                    "For You",
                  style: TextStyle(
                      fontSize: 18.0,
                    fontFamily: "Arimon",
                    color: followingForyou_tx,
                  ),
                ),
              ],
            ),
          ),
          //Middle Section
         Expanded(
           child: Row(
             children: <Widget>[
               Expanded(
                 child: Container(
                   color: Colors.transparent,
                 ),
               ),
               Container(
                 width: 90.0,
                 color: Colors.transparent,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: <Widget>[
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.black,
                        borderRadius: BorderRadius.circular(100.0)
                      ),
                      child: ClipOval(
                        child: Align(
                          heightFactor: 0.5,
                            widthFactor: 0.5,
                            child: Image.asset("assets/images/girl.jpg",fit: BoxFit.fill,)),
                      ),
                    ),

                     SizedBox(
                       height: 30.0,
                     ),
                   Column(
                   children: <Widget>[
                     ImageIcon(
                       AssetImage("assets/icons/fav.png"),
                       size: 25.0,
                       color: home_icon,
                     ),
                     SizedBox(
                         height: 8.0,
                     ),
                     Text(
                       "100.0k",
                       style: TextStyle(
                         color: tiktokMiddleIcons_txt,
                           fontFamily: 'Roboton'
                       ),
                     )
                   ],
                   ),
                     SizedBox(
                       height: 30.0,
                     ),
                     Column(
                       children: <Widget>[
                                 InkWell(
                                   child:ImageIcon(
                                 AssetImage("assets/icons/comment.png"),
                               size: 25.0,
                              color: home_icon,
                       ),
                           onTap: () {
                             _openPoup(context);
                           },
                         ),
                         SizedBox(
                           height: 8.0,
                         ),
                         Text(
                             "3.5k",
                           style: TextStyle(
                               color: tiktokMiddleIcons_txt,
                               fontFamily: 'Roboton'
                           ),
                         )
                       ],
                     ),
                     SizedBox(
                       height: 30.0,
                     ),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         ImageIcon(
                           AssetImage("assets/icons/share.png"),
                           size: 25.0,
                           color: home_icon,
                         ),
                         SizedBox(
                           height: 8.0,
                         ),
                         Text(
                             "600",
                           style: TextStyle(
                               color: tiktokMiddleIcons_txt,
                               fontFamily: 'Roboton'
                           ),
                         )
                       ],
                     ),
                     SizedBox(
                       height: 50.0,
                     ),
                   ],
                 ),
               )
             ],
           ),
         ) ,
          //Bottom Section

          Material(
            color: Colors.black,
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          width: 0.5,
                          color:Colors.grey
                      )
                  )
              ),
              height: 80.0,
              child:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
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
                          color: Colors.white,
                        ),
                        Text("Home",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboton',
                              fontSize: 10.0
                          ),)
                      ],
                    ),
                  ),
                ),

                Expanded(
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
                          color: Colors.white70,
                        ),
                        Text("Discover",
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: 'Roboton',
                                fontWeight: FontWeight.bold,
                                fontSize: 10.0
                            )
                        )
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Record()));
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Image.asset("assets/icons/add.png",width: 55,)
                        ]
                    ),
                  ),
                ),
                Expanded(
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
                          color: Colors.white70,
                        ),
                        Text("Inbox",
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: 'Roboton',
                                fontSize: 10.0
                            )
                        )
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>me()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ImageIcon(
                          AssetImage("assets/icons/me.png"),
                          size: 25.0,
                          color: Colors.white70,
                        ),
                        Text("Me",
                          style: TextStyle(
                              color: Colors.white70,
                              fontFamily: 'Roboton',
                              fontSize: 10.0
                          ),)
                      ],
                    ),
                  ),
                ),

              ],
            ),
            ),
          ),

        ],
      ),
    );
  }
}
void _openPoup(context){
  showModalBottomSheet(context: context,
      isScrollControlled: true,
      builder: (BuildContext bc){
        return Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * .75,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          child: Center(
            child: Column(
              children: <Widget>[
                //Top Section
                Container(
                  height: 30,
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(
                          "380 comments",
                          style: TextStyle(
                           color:comment_commentfigures,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboton'
                          ),
                        ),
                      ),
                     Align(
                       alignment: Alignment.topCenter,
                       child: ButtonTheme(
                         minWidth: 20.0,
                         child: Align(
                           alignment: Alignment.topCenter,
                           child: IconButton(
                             onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>tiktokInterface()));
                             },
                             icon: Align(
                               alignment: Alignment.topCenter,
                               child: Icon(
                                 Icons.close,
                                 color: comment_closeIcon,
                               ),
                             ),
                           ),
                         ),
                       ),
                     )
                    ],
                  ),
                ),

                //Middle Section
                
                   Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                       child: Column(
                         children: <Widget>[
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100.0),
                                        color: Colors.black
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                            text: "asad.g07 .",
                                            style: TextStyle(
                                                color: comment_title,
                                                fontSize: 15.0,
                                                fontFamily: 'Roboton',
                                                fontWeight: FontWeight.bold
                                            ),
                                            children: [
                                              TextSpan(
                                                  text: "Following",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontFamily: 'Roboton'
                                                  )
                                              )
                                            ]
                                        ),
                                      ),
                                      Text(
                                        "Hahahahaha",
                                        style: TextStyle(
                                          color: comment_subTitle,
                                          fontWeight: FontWeight.w300,
                                            fontFamily: 'Roboton'
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                               Column(
                                 children: <Widget>[
                                   Icon(
                                     Icons.favorite_border,
                                     color: comment_likeIcon,
                                   ),
                                   Text(
                                     "5",
                                     style: TextStyle(
                                         color: comment_totalCommentLikes,
                                         fontFamily: 'Roboton'
                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 20.0,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Container(
                                     width: 40,
                                     height: 40,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100.0),
                                         color: Colors.black
                                     ),
                                   ),
                                   SizedBox(
                                     width: 15.0,
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       RichText(
                                         text: TextSpan(
                                             text: "asad.g07 .",
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontSize: 15.0,
                                                 fontFamily: 'Roboton',
                                                 fontWeight: FontWeight.bold
                                             ),
                                             children: [
                                               TextSpan(
                                                   text: "Following",
                                                   style: TextStyle(
                                                       color:Colors.grey,
                                                       fontFamily: 'Roboton'
                                                   )
                                               )
                                             ]
                                         ),
                                       ),
                                       Text(
                                         "Hahahahaha",
                                         style: TextStyle(
                                             color: Colors.black,
                                             fontWeight: FontWeight.w300,
                                             fontFamily: 'Roboton'
                                         ),
                                       )
                                     ],
                                   ),
                                 ],
                               ),
                               Column(
                                 children: <Widget>[
                                   Icon(
                                     Icons.favorite_border,
                                     color: Colors.grey,
                                   ),
                                   Text(
                                     "5",
                                     style: TextStyle(
                                         color: Colors.grey,
                                         fontFamily: 'Roboton'

                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 20.0,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Container(
                                     width: 40,
                                     height: 40,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100.0),
                                         color: Colors.black
                                     ),
                                   ),
                                   SizedBox(
                                     width: 15.0,
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       RichText(
                                         text: TextSpan(
                                             text: "asad.g07 .",
                                             style: TextStyle(
                                                 color: comment_title,
                                                 fontSize: 15.0,
                                                 fontWeight: FontWeight.bold,
                                                 fontFamily: 'Roboton'
                                             ),
                                             children: [
                                               TextSpan(
                                                   text: "Following",
                                                   style: TextStyle(
                                                     color: Colors.grey,
                                                       fontFamily: 'Roboton'
                                                   )
                                               )
                                             ]
                                         ),
                                       ),
                                       Text(
                                         "Hahahahaha",
                                         style: TextStyle(
                                             color: comment_subTitle,
                                             fontWeight: FontWeight.w300,
                                             fontFamily: 'Roboton'
                                         ),
                                       )
                                     ],
                                   ),
                                 ],
                               ),
                               Column(
                                 children: <Widget>[
                                   Icon(
                                     Icons.favorite_border,
                                     color: comment_likeIcon,
                                   ),
                                   Text(
                                     "5",
                                     style: TextStyle(
                                         color: comment_totalCommentLikes,
                                         fontFamily: 'Roboton'
                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 20.0,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Container(
                                     width: 40,
                                     height: 40,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100.0),
                                         color: Colors.black
                                     ),
                                   ),
                                   SizedBox(
                                     width: 15.0,
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       RichText(
                                         text: TextSpan(
                                             text: "asad.g07 .",
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontFamily: 'Roboton',
                                                 fontSize: 15.0,
                                                 fontWeight: FontWeight.bold
                                             ),
                                             children: [
                                               TextSpan(
                                                   text: "Following",
                                                   style: TextStyle(
                                                       color:Colors.grey,
                                                       fontFamily: 'Roboton'
                                                   )
                                               )
                                             ]
                                         ),
                                       ),
                                       Text(
                                         "Hahahahaha",
                                         style: TextStyle(
                                             color: Colors.black,
                                             fontWeight: FontWeight.w300,
                                             fontFamily: 'Roboton'
                                         ),
                                       )
                                     ],
                                   ),
                                 ],
                               ),
                               Column(
                                 children: <Widget>[
                                   Icon(
                                     Icons.favorite_border,
                                     color: Colors.grey,
                                   ),
                                   Text(
                                     "5",
                                     style: TextStyle(
                                         color: Colors.grey,
                                         fontFamily: 'Roboton'
                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 20.0,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Container(
                                     width: 40,
                                     height: 40,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100.0),
                                         color: Colors.black
                                     ),
                                   ),
                                   SizedBox(
                                     width: 15.0,
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       RichText(
                                         text: TextSpan(
                                             text: "asad.g07 .",
                                             style: TextStyle(
                                                 color: comment_title,
                                                 fontSize: 15.0,
                                                 fontFamily: 'Roboton',
                                                 fontWeight: FontWeight.bold
                                             ),
                                             children: [
                                               TextSpan(
                                                   text: "Following",
                                                   style: TextStyle(
                                                     color: Colors.grey,
                                                       fontFamily: 'Roboton'
                                                   )
                                               )
                                             ]
                                         ),
                                       ),
                                       Text(
                                         "Hahahahaha",
                                         style: TextStyle(
                                             color: comment_subTitle,
                                             fontWeight: FontWeight.w300,
                                             fontFamily: 'Roboton'
                                         ),
                                       )
                                     ],
                                   ),
                                 ],
                               ),
                               Column(
                                 children: <Widget>[
                                   Icon(
                                     Icons.favorite_border,
                                     color: comment_likeIcon,
                                   ),
                                   Text(
                                     "5",
                                     style: TextStyle(
                                         color: comment_totalCommentLikes,
                                         fontFamily: 'Roboton'
                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 20.0,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Container(
                                     width: 40,
                                     height: 40,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100.0),
                                         color: Colors.black
                                     ),
                                   ),
                                   SizedBox(
                                     width: 15.0,
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       RichText(
                                         text: TextSpan(
                                             text: "asad.g07 .",
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontSize: 15.0,
                                                 fontFamily: 'Roboton',
                                                 fontWeight: FontWeight.bold
                                             ),
                                             children: [
                                               TextSpan(
                                                   text: "Following",
                                                   style: TextStyle(
                                                       color:Colors.grey,
                                                       fontFamily: 'Roboton'
                                                   )
                                               )
                                             ]
                                         ),
                                       ),
                                       Text(
                                         "Hahahahaha",
                                         style: TextStyle(
                                             color: Colors.black,
                                             fontFamily: 'Roboton',
                                             fontWeight: FontWeight.w300
                                         ),
                                       )
                                     ],
                                   ),
                                 ],
                               ),
                               Column(
                                 children: <Widget>[
                                   Icon(
                                     Icons.favorite_border,
                                     color: Colors.grey,
                                   ),
                                   Text(
                                     "5",
                                     style: TextStyle(
                                         color: Colors.grey,
                                         fontFamily: 'Roboton'
                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 20.0,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Container(
                                     width: 40,
                                     height: 40,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100.0),
                                         color: Colors.black
                                     ),
                                   ),
                                   SizedBox(
                                     width: 15.0,
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       RichText(
                                         text: TextSpan(
                                             text: "asad.g07 .",
                                             style: TextStyle(
                                                 color: comment_title,
                                                 fontSize: 15.0,
                                                 fontFamily: 'Roboton',
                                                 fontWeight: FontWeight.bold
                                             ),
                                             children: [
                                               TextSpan(
                                                   text: "Following",
                                                   style: TextStyle(
                                                     color: Colors.grey,
                                                       fontFamily: 'Roboton'
                                                   )
                                               )
                                             ]
                                         ),
                                       ),
                                       Text(
                                         "Hahahahaha",
                                         style: TextStyle(
                                             color: comment_subTitle,
                                             fontWeight: FontWeight.w300,
                                             fontFamily: 'Roboton'
                                         ),
                                       )
                                     ],
                                   ),
                                 ],
                               ),
                               Column(
                                 children: <Widget>[
                                   Icon(
                                     Icons.favorite_border,
                                     color: comment_likeIcon,
                                   ),
                                   Text(
                                     "5",
                                     style: TextStyle(
                                         color: comment_totalCommentLikes,
                                         fontFamily: 'Roboton'
                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 20.0,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Container(
                                     width: 40,
                                     height: 40,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100.0),
                                         color: Colors.black
                                     ),
                                   ),
                                   SizedBox(
                                     width: 15.0,
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       RichText(
                                         text: TextSpan(
                                             text: "asad.g07 .",
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontSize: 15.0,
                                                 fontFamily: 'Roboton',
                                                 fontWeight: FontWeight.bold
                                             ),
                                             children: [
                                               TextSpan(
                                                   text: "Following",
                                                   style: TextStyle(
                                                       color:Colors.grey,
                                                       fontFamily: 'Roboton'
                                                   )
                                               )
                                             ]
                                         ),
                                       ),
                                       Text(
                                         "Hahahahaha",
                                         style: TextStyle(
                                             color: Colors.black,
                                             fontWeight: FontWeight.w300,
                                             fontFamily: 'Roboton'
                                         ),
                                       )
                                     ],
                                   ),
                                 ],
                               ),
                               Column(
                                 children: <Widget>[
                                   Icon(
                                     Icons.favorite_border,
                                     color: Colors.grey,
                                   ),
                                   Text(
                                     "5",
                                     style: TextStyle(
                                         color: Colors.grey,
                                         fontFamily: 'Roboton'
                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 20.0,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Container(
                                     width: 40,
                                     height: 40,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100.0),
                                         color: Colors.black
                                     ),
                                   ),
                                   SizedBox(
                                     width: 15.0,
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       RichText(
                                         text: TextSpan(
                                             text: "asad.g07 .",
                                             style: TextStyle(
                                                 color: comment_title,
                                                 fontSize: 15.0,
                                                 fontFamily: 'Roboton',
                                                 fontWeight: FontWeight.bold
                                             ),
                                             children: [
                                               TextSpan(
                                                   text: "Following",
                                                   style: TextStyle(
                                                     color: Colors.grey,
                                                       fontFamily: 'Roboton'
                                                   )
                                               )
                                             ]
                                         ),
                                       ),
                                       Text(
                                         "Hahahahaha",
                                         style: TextStyle(
                                             color: comment_subTitle,
                                             fontWeight: FontWeight.w300,
                                             fontFamily: 'Roboton'
                                         ),
                                       )
                                     ],
                                   ),
                                 ],
                               ),
                               Column(
                                 children: <Widget>[
                                   Icon(
                                     Icons.favorite_border,
                                     color: comment_likeIcon,
                                   ),
                                   Text(
                                     "5",
                                     style: TextStyle(
                                         color: comment_totalCommentLikes,
                                         fontFamily: 'Roboton'
                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 20.0,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Container(
                                     width: 40,
                                     height: 40,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100.0),
                                         color: Colors.black
                                     ),
                                   ),
                                   SizedBox(
                                     width: 15.0,
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       RichText(
                                         text: TextSpan(
                                             text: "asad.g07 .",
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontSize: 15.0,
                                                 fontWeight: FontWeight.bold,
                                                 fontFamily: 'Roboton'
                                             ),
                                             children: [
                                               TextSpan(
                                                   text: "Following",
                                                   style: TextStyle(
                                                       color:Colors.grey,
                                                       fontFamily: 'Roboton'
                                                   )
                                               )
                                             ]
                                         ),
                                       ),
                                       Text(
                                         "Hahahahaha",
                                         style: TextStyle(
                                             color: Colors.black,
                                             fontWeight: FontWeight.w300,
                                             fontFamily: 'Roboton'
                                         ),
                                       )
                                     ],
                                   ),
                                 ],
                               ),
                               Column(
                                 children: <Widget>[
                                   Icon(
                                     Icons.favorite_border,
                                     color: Colors.grey,
                                   ),
                                   Text(
                                     "5",
                                     style: TextStyle(
                                         color: Colors.grey,
                                         fontFamily: 'Roboton'
                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 20.0,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Container(
                                     width: 40,
                                     height: 40,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100.0),
                                         color: Colors.black
                                     ),
                                   ),
                                   SizedBox(
                                     width: 15.0,
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       RichText(
                                         text: TextSpan(
                                             text: "asad.g07 .",
                                             style: TextStyle(
                                                 color: comment_title,
                                                 fontSize: 15.0,
                                                 fontWeight: FontWeight.bold,
                                                 fontFamily: 'Roboton'
                                             ),
                                             children: [
                                               TextSpan(
                                                   text: "Following",
                                                   style: TextStyle(
                                                     color: Colors.grey,
                                                       fontFamily: 'Roboton'
                                                   )
                                               )
                                             ]
                                         ),
                                       ),
                                       Text(
                                         "Hahahahaha",
                                         style: TextStyle(
                                             color: comment_subTitle,
                                             fontWeight: FontWeight.w300,
                                             fontFamily: 'Roboton'
                                         ),
                                       )
                                     ],
                                   ),
                                 ],
                               ),
                               Column(
                                 children: <Widget>[
                                   Icon(
                                     Icons.favorite_border,
                                     color: comment_likeIcon,
                                   ),
                                   Text(
                                     "5",
                                     style: TextStyle(
                                         color: comment_totalCommentLikes,
                                         fontFamily: 'Roboton'
                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 20.0,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Row(
                                 children: <Widget>[
                                   Container(
                                     width: 40,
                                     height: 40,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100.0),
                                         color: Colors.black
                                     ),
                                   ),
                                   SizedBox(
                                     width: 15.0,
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       RichText(
                                         text: TextSpan(
                                             text: "asad.g07 .",
                                             style: TextStyle(
                                                 color: Colors.black,
                                                 fontSize: 15.0,
                                                 fontFamily: 'Roboton',
                                                 fontWeight: FontWeight.bold
                                             ),
                                             children: [
                                               TextSpan(
                                                   text: "Following",
                                                   style: TextStyle(
                                                       color:Colors.grey,
                                                       fontFamily: 'Roboton'
                                                   )
                                               )
                                             ]
                                         ),
                                       ),
                                       Text(
                                         "Hahahahaha",
                                         style: TextStyle(
                                             color: Colors.black,
                                             fontFamily: 'Roboton',
                                             fontWeight: FontWeight.w300
                                         ),
                                       )
                                     ],
                                   ),
                                 ],
                               ),
                               Column(
                                 children: <Widget>[
                                   Icon(
                                     Icons.favorite_border,
                                     color: Colors.grey,
                                   ),
                                   Text(
                                     "5",
                                     style: TextStyle(
                                         color: Colors.grey,
                                         fontFamily: 'Roboton'
                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),
                           SizedBox(
                             height: 20.0,
                           ),
                         ],
                       )
                      ),
                    ),
                  ),
                
                //Bottom Section
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 6.0),
                 height: 70,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.grey,
                      width: 0.5
                    )
                  )
                ),
                child: Row(
                   children: <Widget>[
                           Expanded(
                             flex:2,
                             child: SizedBox(
                          child: InkWell(
                              onTap: (){},
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Add comment",
                                    hintStyle: TextStyle(
                                      color: Colors.black54
                                    ),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(Icons.alternate_email,
                                  color: Colors.black,)
                                ),
                              ),
                          ),
                        ),
                           ),
                     IconButton(
                       icon: Icon(Icons.insert_emoticon,
                       color:Colors.black,),
                     )
                   ],
                 ),
               ),
              ],
            ),
          ),

          ),
        );
  });
}