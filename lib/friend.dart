import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/me.dart';
import 'package:tiktok_clone/tabs/FirstTabScreen.dart';
import 'package:tiktok_clone/tabs/SecondTabScreen.dart';
import 'package:tiktok_clone/mycolors.dart';
import 'followingNfollowers/followingtab.dart';
import 'followingNfollowers/followingtab.dart';
import 'package:tiktok_clone/following.dart';
import 'package:tiktok_clone/inbox2.dart';
class FriendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FriendHome(),
    );
  }
}
class FriendHome extends StatefulWidget {
  @override
  _FriendHomeState createState() => _FriendHomeState();
}

class _FriendHomeState extends State<FriendHome>with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller=TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  TabBar _getTabBar(){
    return TabBar(
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Colors.black,
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.format_line_spacing,color: Colors.black,),
        ),
        Tab(
          icon: Icon(Icons.favorite_border,color: Colors.grey,),
        ),
      ],
      controller: controller,
    );
  }
  TabBarView _getTabBarView(tabs){
    return TabBarView(
      children: tabs,
      controller: controller,
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: <Widget>[
                //Top Section
                Container(
                  height: 60.0,
                  color: Colors.white,
                  padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Material(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>FollowingScreen()));
                          },
                          child: Icon(Icons.arrow_back,
                            color: me_icon,),
                        ),
                      ),

                      Row(
                        children: <Widget>[
                          Text("FiZza_offical",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: meTopName_txt,
                            ),),
                          Icon(Icons.arrow_drop_down,
                            color: medropArrow_icon,)
                        ],
                      ),
                      ButtonTheme(
                        minWidth: 30.0,
                        child: RaisedButton(
                          elevation: 0,
                          color: Colors.white,
                          onPressed: (){
                          },
                          child: Icon(Icons.more_vert,
                            color: meOption_icon,),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 0.5,
                  color: Colors.grey,
                ),

                //Middle Section
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 15.0,),
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/girl.jpg"),
                              fit: BoxFit.fill
                            )
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Text("@fizza_offical",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: meIdentyName_txt
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: (){
                              },
                              splashColor: Colors.grey,
                              child: Column(
                                children: <Widget>[
                                  Text("210",
                                    style: TextStyle(
                                        color: followingFollowlikesFigures,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text("Following",
                                    style: TextStyle(
                                        color: followingFollowlikes_txt
                                    ),)
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 35.0,
                            ),
                            Column(
                              children: <Widget>[
                                Text("662.8k",
                                  style: TextStyle(
                                      color: followingFollowlikesFigures,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text("Followers")
                              ],
                            ),
                            SizedBox(
                              width: 35.0,
                            ),
                            Column(
                              children: <Widget>[
                                Text("2.3M",
                                  style: TextStyle(
                                      color: followingFollowlikesFigures,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text("Likes",
                                  style: TextStyle(
                                      color: followingFollowlikes_txt
                                  ),)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ButtonTheme(
                              minWidth: 140.0,
                              height: 40.0,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Inbox2Home()));
                                },
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: meEdit_br,
                                        width: 0.5
                                    )
                                ),
                                color: meEdit_bg,
                                child: Text(
                                  "Message",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: meEdit_txt
                                  ),
                                ),

                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            ButtonTheme(
                              minWidth: 40.0,
                              height: 40.0,
                              child: RaisedButton(
                                onPressed: () {
                                },
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: meEdit_br,
                                        width: 0.5
                                    )
                                ),
                                color: meEdit_bg,
                                child: Icon(Icons.turned_in_not,
                                  color: meSave_icon,),
                              ),
                            )
                          ],
                        ),

                        SizedBox(
                          height: 20.0,
                        ),
                        Divider(
                          height: 1,
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),

                        //TapBar Section
                        Column(
                          children: <Widget>[
                            _getTabBar(),
                            SizedBox(height: 15.0,),
                            Container(
                              height: 460.0,
                              child: _getTabBarView(
                                <Widget>[
                                  FirstTabScreen(),
                                  SecondTabScreen(),
                                ],
                              ),
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                ),
                //Bottom Section

              ],
            ),
          ),
        ),
      ),
    );
  }
}


