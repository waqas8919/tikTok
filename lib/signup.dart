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
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
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
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.white,

            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: new TextStyle(
                    color: Colors
                        .black))), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          currentIndex: 0,
          items: [
            new BottomNavigationBarItem(
              icon: Icon(
                AppIcons.home,
                color: Colors.black,
                size: 20,
              ),
              title: new Text(
                "Home",
                style: TextStyle(
                    fontSize: Dimen.bottomNavigationTextSize,
                    color: Colors.black),
              ),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(
                AppIcons.search,
                color: Colors.black,
                size: 20,
              ),
              title: new Text(
                "Discover",
                style: TextStyle(
                    fontSize: Dimen.bottomNavigationTextSize,
                    color: Colors.black),
              ),
            ),
            new BottomNavigationBarItem(
              title: Text(''),
              icon: new Container(
                  width: 45.0,
                  height: 32.0,
                  child: Stack(children: [
                    Container(
                        margin: EdgeInsets.only(left: 10.0),
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 250, 45, 108),
                            borderRadius: BorderRadius.circular(
                                Dimen.createButtonBorder))),
                    Container(
                        margin: EdgeInsets.only(right: 10.0),
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 32, 211, 234),
                            borderRadius: BorderRadius.circular(
                                Dimen.createButtonBorder))),
                    Center(
                        child: Container(
                      height: double.infinity,
                      width: 38,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.circular(Dimen.createButtonBorder)),
                      child: Icon(
                        Icons.add,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    )),
                  ])),
            ),
            new BottomNavigationBarItem(
              icon: Icon(AppIcons.messages, color: Colors.black, size: 20),
              title: new Text(
                "Inbox",
                style: TextStyle(
                    fontSize: Dimen.bottomNavigationTextSize,
                    color: Colors.black),
              ),
            ),
            new BottomNavigationBarItem(
              icon: Icon(AppIcons.profile, color: Colors.black, size: 20),
              title: new Text(
                "Me",
                style: TextStyle(
                    fontSize: Dimen.bottomNavigationTextSize,
                    color: Colors.black),
              ),
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
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
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
                        color: facebook_br,
                        width: 0.5,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ImageIcon(
                              AssetImage("assets/images/person.png"),
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Use phone or email",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
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
                            child: Image.asset(
                              "assets/images/facebook.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Signup with Facebook",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
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
                            child: Image.asset(
                              "assets/images/google.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Signup with Google",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45.0,
                ),
                new Expanded(
                    child: new Align(
                        alignment: Alignment.bottomCenter,
                        child: new Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: new Text(
                                  "By continue, you agree to tiktok,Terms of use and confirms that you read tiktok privacy policies.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ))),
                new Align(
                    alignment: Alignment.bottomCenter,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 50,
                            color: Colors.grey[100],
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text(
                                  "Already Have an Account?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16),
                                ),
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Log In',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 16),
                                    ))
                              ],
                            )),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        );
      });
}
