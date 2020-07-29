import 'package:flutter/material.dart';
import 'package:tiktok_clone/SignupToEmail/signupphoneEmail.dart';
import 'package:tiktok_clone/login.dart';
import 'package:tiktok_clone/SignupToEmail/password.dart';
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
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0, 16.0),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext bc)=>PasswordScreen()));
            },
            child: Text("Skip",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontFamily: 'Roboton'
              ),
            ),
          ),
        ),
        title: Text("Sign up",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20.0,
              fontFamily: 'Roboton'
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.monetization_on,
              color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 50,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Create Username",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboton',
                      fontSize: 20.0
                  ),),
              ),
              SizedBox(height: 30,),
              Container(
                child: RichText(
                  text: TextSpan(
                      text: "You can always change the later",
                      style: TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                          fontFamily: 'Roboton'
                      )
                  ),
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
              SizedBox(height: 30,),
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                color: Colors.white60,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext bc)=>LoginScreen()));
                },
                child: Text("Sign up",
                  style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'Arimon',
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
