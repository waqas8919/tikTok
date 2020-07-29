import 'package:flutter/material.dart';
import 'package:tiktok_clone/SoundScreenTabs/soundTab1.dart' as SoundFirstTab;
import 'package:tiktok_clone/SoundScreenTabs/soundTab2.dart' as SoundSecondTab;
import 'package:tiktok_clone/record.dart';
import 'package:tiktok_clone/SoundSelection/soundSelection.dart';

class SoundScreen extends StatefulWidget {
  @override
  _SoundScreenState createState() => _SoundScreenState();
}

class _SoundScreenState extends State<SoundScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  TabBar _getTabBar() {
    return TabBar(
      indicatorColor: Colors.black,
      tabs: <Widget>[
        new Tab(
          child: Text(
            "Discover",
            style: TextStyle(color: Colors.black),
          ),
        ),
        new Tab(
          child: Text(
            "Favorites",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
      controller: controller,
    );
  }

  TabBarView _getTabBarView(tabs) {
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  //Top Section
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Record()));
                                },
                                icon: Icon(Icons.close),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SoundSelectScreen()));
                                },
                                child: Text(
                                  "Sounds",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontFamily: 'Roboton',
                                      fontWeight: FontWeight.bold),
                                ),
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
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search Music name",
                              hintStyle: TextStyle(),
                            ),
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'Roboton'),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),

                  //2nd Section

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/tik.jpg"),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          _getTabBar(),
                          //TapBar
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: double.maxFinite,
                                  child: _getTabBarView(
                                    <Widget>[
                                      SoundFirstTab.SoundFirstTab(),
                                      SoundSecondTab.SoundSecondTab(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
