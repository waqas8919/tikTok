import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/SignupToEmail/NewEmailTab.dart';
import 'package:tiktok_clone/SignupToEmail/NewPhoneTab.dart';
import 'package:tiktok_clone/signup.dart';

class NewSignUpPhoneEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewSignUpPhoneEmailHome(),
    );
  }
}

class NewSignUpPhoneEmailHome extends StatefulWidget {
  @override
  _SignUpPhoneEmailHomeState createState() => _SignUpPhoneEmailHomeState();
}

class _SignUpPhoneEmailHomeState extends State<NewSignUpPhoneEmailHome>
    with SingleTickerProviderStateMixin {
  TabController tb;
  @override
  void initState() {
    tb = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext bc) => Signup()));
          },
          icon: Icon(Icons.arrow_back, color: Colors.black87, size: 28),
        ),
        title: Text(
          "Sign Up",
          style: TextStyle(
              color: Colors.black,
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Arimon',
              letterSpacing: 0.5),
        ),
        centerTitle: true,
        // actions: <Widget>[
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.help_outline,
        //       size: 25,
        //       color: Colors.black38,
        //     ),
        //   )
        // ],
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black38))),
                child: TabBar(
                  indicatorColor: Color(0xff2c3e50),
                  labelPadding: EdgeInsets.only(bottom: 10),
                  tabs: <Widget>[
                    Text(
                      "Phone",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboton',
                          fontSize: 16.0),
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboton',
                          fontSize: 16.0),
                    ),
                  ],
                  controller: tb,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TabBarView(
                    children: <Widget>[
                      NewPhoneTab(),
                      NewEmailTab(),
                    ],
                    controller: tb,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
