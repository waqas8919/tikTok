import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/mycolors.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: PostHomePage(),
    );
  }
}

class PostHomePage extends StatefulWidget {
  @override
  _PostHomePageState createState() => _PostHomePageState();
}

class _PostHomePageState extends State<PostHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: post_backArrow,
          ),
          title: Text(
            "Post",
            style: TextStyle(color: post_topTxt),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        body: Container(
            child: Center(
          child: Column(children: <Widget>[
            Container(
              height: 180.0,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 0.5,
                          color: Colors.grey,
                          style: BorderStyle.solid))),
              child: Row(children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: TextField(
                              maxLines: 4,
                              decoration: InputDecoration.collapsed(
                                  hintText: "Describe your video",
                                  hintStyle: TextStyle(color: Colors.grey)),
                              style: TextStyle(
                                color: post_txtField_txt,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60.0,
                          child: Row(
                            children: <Widget>[
                              ButtonTheme(
                                minWidth: 100.0,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  )),
                                  color: Colors.transparent,
                                  elevation: 0.0,
                                  onPressed: () {},
                                  child: Text(
                                    "# Hashtags",
                                    style: TextStyle(color: post_hashTag_btn),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              ButtonTheme(
                                minWidth: 100.0,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  )),
                                  color: Colors.transparent,
                                  elevation: 0.0,
                                  onPressed: () {},
                                  child: Text(
                                    "@ Friends",
                                    style: TextStyle(color: post_hashTag_btn),
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
                //Video Box
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 30.0),
                  width: 90.0,
                  color: Colors.pink,
                )
              ]),
            ),

            //2nd Section
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.lock_outline,
                              color: post_AllIcons,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Who can view this video",
                              style: TextStyle(color: post_AllTextLines),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Public",
                              style: TextStyle(color: post_publicTxt),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: post_publicTxt,
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
                            Icon(
                              Icons.comment,
                              color: post_AllIcons,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Allow comments",
                              style: TextStyle(color: post_AllTextLines),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.videocam,
                              color: post_AllIcons,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Allow Duet and React",
                              style: TextStyle(color: post_AllTextLines),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                  ],
                ),
              ),
            ),
            //Bottom Section
            Container(
              height: 80.0,
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ButtonTheme(
                      minWidth: 100.0,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.5, color: post_draftBtn_br),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.drafts,
                              color: post_draftBtn_txt,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              "Drafts",
                              style: TextStyle(color: post_draftBtn_txt),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: ButtonTheme(
                      minWidth: 100.0,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.5, color: post_draftBtn_br),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.poll,
                              color: post_draftBtn_txt,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              "Post",
                              style: TextStyle(color: post_draftBtn_txt),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        )),
      ),
    );
  }
}
