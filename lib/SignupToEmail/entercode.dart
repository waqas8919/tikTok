import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/SignupToEmail/password.dart';
import 'package:tiktok_clone/SignupToEmail/signupphoneEmail.dart';
class EnterCode extends StatefulWidget {
  @override
  _EnterCodeState createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EnterCodeHome(),
    );
  }
}
class EnterCodeHome extends StatefulWidget {
  @override
  _EnterCodeHomeState createState() => _EnterCodeHomeState();
}

class _EnterCodeHomeState extends State<EnterCodeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext bc)=>SignUpPhoneEmail()));
          },
          icon: Icon(Icons.arrow_back,
          color: Colors.black,),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext bc)=>PasswordScreen()));
            },
            icon: Icon(Icons.monetization_on,
            color: Colors.grey,),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30.0,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Enter 4-digit code",
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arimon',
                fontSize: 25),),
              ),
              SizedBox(height: 10.0,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Your code was sent to .....",
                  style: TextStyle(color: Colors.black38,
                      fontFamily: 'Roboton',
                      fontSize: 18),),
              ),
              SizedBox(height: 50.0,),
              Container(
                height: 50.0,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                       minLines: 1,
                        maxLength: 1,
                        selectionHeightStyle: BoxHeightStyle.tight,
                        decoration: InputDecoration(
                          helperStyle: TextStyle(color: Colors.white)
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Expanded(
                      child: TextField(
                        minLines: 1,
                        maxLength: 1,
                        decoration: InputDecoration(
                            helperStyle: TextStyle(color: Colors.white)
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Expanded(
                      child: TextField(
                        minLines: 1,
                        maxLength: 1,
                        decoration: InputDecoration(
                            helperStyle: TextStyle(color: Colors.white)
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Expanded(
                      child: TextField(
                        minLines: 1,
                        maxLength: 1,
                        decoration: InputDecoration(
                            helperStyle: TextStyle(color: Colors.white)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    text: "Didn't get a code? ",
                    style: TextStyle(
                      color: Colors.black54,
                      letterSpacing: 0.5
                    ),
                    children: [
                      TextSpan(
                        text: "Request phone call",
                        style: TextStyle(
                            color: Colors.red,
                            letterSpacing: 0.5
                        ),
                      )
                    ]
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Resend code 56s",
                  style: TextStyle(
                      color: Colors.black54,
                      letterSpacing: 0.5
                  ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
