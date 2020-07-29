import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/SignupToEmail/signupphoneEmail.dart';
import 'package:tiktok_clone/bottom_nav_bar.dart';
import 'package:tiktok_clone/main.dart';
import 'package:tiktok_clone/resources/assets.dart';
import 'package:tiktok_clone/resources/dimen.dart';
import 'package:tiktok_clone/tiktko_Interface.dart';
import 'mycolors.dart';
import 'package:tiktok_clone/SignupToEmail/signuptoemail.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok',
      theme: ThemeData(primaryColor: Colors.white),
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageIcon(
              AssetImage("assets/images/person.png"),
              color: Colors.grey,
              size: 80,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Sign up for an account",
              style: TextStyle(
                color: text1,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SizedBox(
              width: 200.0,
              child: Builder(
                  builder: (context) => RaisedButton(
                        onPressed: () {
                          _openPopup(context);
                        },
                        color: btn1,
                        textColor: Colors.white,
                        child: Text("Sign up"),
                      )),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}

void _openPopup(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * .90,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: 10.0,
                        child: RaisedButton(
                            elevation: 0,
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Signup()));
                            },
                            child: Icon(Icons.close)),
                      ),
                      Icon(Icons.more)
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    "Sign up for Tiktok",
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Create a profile, follow other accounts, make your own videos, and more.",
                    style: TextStyle(fontSize: 16.0, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SignupToEmail()));
                      },
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.supervised_user_circle,
                                color: usephoneemail_icon,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Use phone or email",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: usephoneemail_text,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: RaisedButton(
                      color: Colors.white,
                      elevation: 0,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => MyApp()));
                      },
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: facebook_br,
                          width: 0.5,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.face,
                                color: facebook_icon,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Signup with Facebook",
                                style: TextStyle(
                                    fontSize: 15.0, color: facebook_text),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    child: RaisedButton(
                      color: Colors.white,
                      elevation: 0,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => MyApp()));
                      },
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: google_br,
                          width: 0.5,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.gps_off,
                                color: google_icon,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Signup with Google",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: google_text,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
