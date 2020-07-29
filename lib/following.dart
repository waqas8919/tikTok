import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/discover.dart';
import 'package:tiktok_clone/followingNfollowers/followingtab.dart';
import 'package:tiktok_clone/followingNfollowers/followerstab.dart';
import 'package:tiktok_clone/me.dart';
import 'package:tiktok_clone/friend.dart';
class FollowingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FollowingHomePage(),
    );
  }
}

  class FollowingHomePage extends StatefulWidget {
    @override
    _FollowingHomePageState createState() => _FollowingHomePageState();
  }

  class _FollowingHomePageState extends State<FollowingHomePage>with SingleTickerProviderStateMixin {

    @override
    Widget build(BuildContext context) {
      return  DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 2.0,
                leading: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>me()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                title: Text("aamirsheikh740",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontFamily: "Roboton",
                  fontWeight: FontWeight.bold
                ),),
                centerTitle: true,
                actions: <Widget>[
                  IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.person_add
                    ),
                  )
                ],
                bottom: TabBar(
                  indicatorColor: Colors.black,
                  tabs: <Widget>[
                  new Tab(
                    child: Text("FOLLOWING 209",style: TextStyle(color: Colors.black,
                        fontFamily: 'Roboton',fontSize: 16.0,fontWeight: FontWeight.bold),),
                  ),
                    new Tab(
                        child: Text("FOLLOWERS 2100",style: TextStyle(color: Colors.black,
                            fontFamily: 'Roboton',fontSize: 16.0,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              body: Center(
             
                    child: Expanded(
                        child: Container(
                          child: TabBarView(
                            children: <Widget>[
                              FollowingTabScreen(),
                              FollowerScreen(),
                            ],
                          ),
                        ),

                    ),
                  ),
               
            ),
          );

    }
  }


