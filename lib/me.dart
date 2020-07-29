import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/discover.dart';
import 'package:tiktok_clone/tabs/FirstTabScreen.dart' as firsttab;
import 'package:tiktok_clone/tabs/SecondTabScreen.dart' as secondtab;
import 'package:tiktok_clone/tabs/ThirdTabScreen.dart' as thirdtab;
import 'package:tiktok_clone/tiktko_Interface.dart';
import 'package:tiktok_clone/record.dart';
import 'package:tiktok_clone/inbox.dart';
import 'package:tiktok_clone/settings.dart';
import 'mycolors.dart';
import 'package:tiktok_clone/following.dart';

class me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  TabBar _getTabBar() {
    return TabBar(
      tabs: <Widget>[
        new Tab(
          icon: Icon(
            Icons.playlist_add_check,
            color: tabBarIcons,
          ),
        ),
        new Tab(
          icon: Icon(
            Icons.favorite_border,
            color: tabBarIcons,
          ),
        ),
        new Tab(
          icon: Icon(
            Icons.lock_outline,
            color: tabBarIcons,
          ),
        )
      ],
      controller: tabController,
    );
  }

  TabBarView _getTabBarView(tabs) {
    return TabBarView(
      children: tabs,
      controller: tabController,
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
                      Icon(
                        Icons.person_add,
                        color: me_icon,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Aamir Sheikh",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: meTopName_txt,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: medropArrow_icon,
                          )
                        ],
                      ),
                      ButtonTheme(
                        minWidth: 30.0,
                        child: RaisedButton(
                          elevation: 0,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        setting()));
                          },
                          child: Icon(
                            Icons.more_vert,
                            color: meOption_icon,
                          ),
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
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1510552776732-03e61cf4b144?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "@aamirsheikh740",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: meIdentyName_txt),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            FollowingScreen()));
                              },
                              splashColor: Colors.grey,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "210",
                                    style: TextStyle(
                                        color: followingFollowlikesFigures,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    "Following",
                                    style: TextStyle(
                                        color: followingFollowlikes_txt),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 35.0,
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  "2100",
                                  style: TextStyle(
                                      color: followingFollowlikesFigures,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
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
                                Text(
                                  "23.0k",
                                  style: TextStyle(
                                      color: followingFollowlikesFigures,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "Likes",
                                  style: TextStyle(
                                      color: followingFollowlikes_txt),
                                )
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
                                onPressed: () {},
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: meEdit_br, width: 0.5)),
                                color: meEdit_bg,
                                child: Text(
                                  "Edit profile",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: meEdit_txt),
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
                                onPressed: () {},
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: meEdit_br, width: 0.5)),
                                color: meEdit_bg,
                                child: Icon(
                                  Icons.turned_in_not,
                                  color: meSave_icon,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Tap to add bio",
                          style: TextStyle(color: tapBio_txt),
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
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              height: 460.0,
                              child: _getTabBarView(
                                <Widget>[
                                  firsttab.FirstTabScreen(),
                                  secondtab.SecondTabScreen(),
                                  thirdtab.ThirdTabScreen()
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
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          top: BorderSide(width: 0.5, color: Colors.grey))),
                  height: 80.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        tiktokInterface()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ImageIcon(
                                AssetImage("assets/icons/home.png"),
                                size: 25.0,
                                color: Colors.black54,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontFamily: 'Roboton',
                                    fontSize: 10.0),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // ignore: missing_return
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        discover()));
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
                                      fontSize: 10.0))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Record()));
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset(
                                  "assets/icons/dicovAdd.png",
                                  height: 30,
                                )
                              ]),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        inboxpage()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ImageIcon(
                                AssetImage("assets/icons/inbox.png"),
                                size: 25.0,
                                color: Colors.black54,
                              ),
                              Text("Inbox",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboton',
                                      fontSize: 10.0))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) => me()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ImageIcon(
                                AssetImage("assets/icons/me.png"),
                                size: 25.0,
                                color: Colors.black,
                              ),
                              Text(
                                "Me",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Roboton',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0),
                              )
                            ],
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
      ),
    );
  }
}
