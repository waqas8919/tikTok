import 'package:flutter/material.dart';
import 'package:tiktok_clone/SignupToEmail/entercode.dart';
import 'package:tiktok_clone/SignupToEmail/signupphoneEmail.dart';
import 'package:tiktok_clone/login.dart';
import 'package:tiktok_clone/SignupToEmail/password.dart';
import 'package:tiktok_clone/main.dart';

class UserNameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserNameHome(),
    );
  }
}

class UserNameHome extends StatefulWidget {
  @override
  _UserNameHomeState createState() => _UserNameHomeState();
}

class _UserNameHomeState extends State<UserNameHome> {
  TextEditingController Usernamecontroller = new TextEditingController();
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0, 16.0),
          child: InkWell(
            onTap: () {
//              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext bc) => MyApp()));
            },
            child: Text(
              "Skip",
              style: TextStyle(
                  color: Colors.grey, fontSize: 16.0, fontFamily: 'Roboton'),
            ),
          ),
        ),
        title: Text(
          "Sign up",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20.0,
              fontFamily: 'Roboton'),
        ),
        // actions: <Widget>[
        //   IconButton(
        //     onPressed: (){},
        //     icon: Icon(Icons.monetization_on,
        //       color: Colors.black,),
        //   )
        // ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Create Username",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboton',
                      fontSize: 24.0),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                      text: "You can always change the later",
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                          fontFamily: 'Roboton')),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: Usernamecontroller,
                autocorrect: true,
                decoration: InputDecoration(
                    hintText: 'Username',
                    suffixIcon: Icon(Icons.check, color: Colors.green)),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 50,
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    color: Colors.pink,
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (BuildContext bc) => LoginScreen()));
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Arimon',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
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
