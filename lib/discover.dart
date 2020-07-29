import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/discovScreendata.dart';
import 'package:tiktok_clone/inbox.dart';
import 'package:tiktok_clone/record.dart';
import 'package:tiktok_clone/me.dart';
import 'package:tiktok_clone/tiktko_Interface.dart';
import 'package:carousel_pro/carousel_pro.dart';

class discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: DiscoverHome(),
    );
  }
}

class DiscoverHome extends StatefulWidget {
  @override
  _DiscoverHomeState createState() => _DiscoverHomeState();
}

class _DiscoverHomeState extends State<DiscoverHome> {
  @override
  Widget build(BuildContext context) {
    Widget imageSliderCarousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage("assets/images/pic1.jpg"),
          AssetImage("assets/images/pic2.jpg"),
          AssetImage("assets/images/pic3.jpg"),
          AssetImage("assets/images/pic4.jpg"),
          AssetImage("assets/images/pic5.jpg"),
        ],
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
        dotSize: 3,
        dotHorizontalPadding: 1.0,
        dotSpacing: 15.0,
        autoplay: true,
      ),
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: <Widget>[
                //Top Section
                Container(
                  height: 40.0,
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Material(
                          color: Colors.white,
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.black12,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black54,
                                ),
                                hintText: "Search",
                                hintStyle: TextStyle()),
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      Center(
                        child: Expanded(
                          child: ImageIcon(
                            AssetImage("assets/icons/dicovtop.png"),
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                //Middle Section

                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 200,
                          child: ListView(
                            children: <Widget>[
                              imageSliderCarousel,
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              DiscoverData(),
                            ],
                          ),
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
                                color: Colors.black,
                              ),
                              Text("Discover",
                                  style: TextStyle(
                                      color: Colors.black,
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
                                      color: Colors.grey,
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
                                color: Colors.grey,
                              ),
                              Text(
                                "Me",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Roboton',
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
