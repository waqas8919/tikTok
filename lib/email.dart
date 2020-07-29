import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mycolors.dart';
import 'package:tiktok_clone/manageAccount.dart';
class email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: EmailHomePage(),
    );
  }
}

class EmailHomePage extends StatefulWidget {
  @override
  _EmailHomePageState createState() => _EmailHomePageState();
}

class _EmailHomePageState extends State<EmailHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: Container(
                  height: 70.0,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ButtonTheme(
                          minWidth: 5.0,
                          child: RaisedButton(
                            highlightElevation: 1.0,
                            elevation: 0,
                            color: Colors.white,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>manageAccount()));
                            },
                            child: Icon(Icons.arrow_back,
                             color: email_backArrow,
                            size: 25.0,),
                          ),
                        ),
                      ),
                   ],
                 ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                         Text(
                          "Enter Email address",
                          style: TextStyle(
                            color: email_firstline_txt,
                            fontSize: 20.0,
                            fontFamily: 'Arimon',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none
                          ),
                        ),

                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "We'll email you a code to verify your email address",
                        style: TextStyle(
                            color: email_Secline_txt,
                            fontSize: 14.0,
                            fontFamily: 'Roboton',
                            decoration: TextDecoration.none
                        ),
                      ),

                      SizedBox(
                        height: 45.0,
                      ),
                      Material(
                        color: Colors.transparent,
                        child: new TextField(
                          decoration: InputDecoration(
                           hintText: "Email address",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Roboton',
                            ),
                          ),
                         style: TextStyle(
                           color: email_TextField_txt,
                           fontSize: 18.0,
                           fontFamily: 'Roboton',
                         ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      RaisedButton(
                        color: email_Sendbtn_bg,
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        onPressed: () {},
                        child: Text(
                          "Send Code",
                          style: TextStyle(
                            color: email_Sendbtn_txt,
                            fontFamily: 'Arimon',
                          ),
                        ),
                      )
                    ],
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
