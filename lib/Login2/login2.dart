import 'package:flutter/material.dart';
import 'package:tiktok_clone/SignupToPhoneEmailTabs/phonetab.dart';
import 'package:tiktok_clone/SignupToPhoneEmailTabs/emailtab.dart';
import 'package:tiktok_clone/SignupToEmail/signupphoneEmail.dart';
import 'package:tiktok_clone/Login2/login2phonetab.dart';
import 'package:tiktok_clone/Login2/login2emailtab.dart';
import 'package:tiktok_clone/SignupToEmail/createUsername.dart';
import 'package:tiktok_clone/login.dart';

class LoginSecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginSecondHome(),
    );
  }
}

class LoginSecondHome extends StatefulWidget {
  @override
  _LoginSecondHomeState createState() => _LoginSecondHomeState();
}

class _LoginSecondHomeState extends State<LoginSecondHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext bc) => LoginScreen()));
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
              actions: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.monetization_on,
                    color: Colors.black,
                  ),
                )
              ],
              bottom: TabBar(
                indicatorPadding: EdgeInsets.only(left: 16.0),
                labelPadding: EdgeInsets.only(bottom: 8.0),
                indicatorColor: Colors.black,
                tabs: <Widget>[
                  Text(
                    "Phone",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboton',
                        fontSize: 18.0),
                  ),
                  Text(
                    "Email / UserName",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboton',
                        fontSize: 18.0),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[Login2PhoneTab(), Login2EmailTab()],
            ),
          ),
        ),
      ),
    );
  }
}
