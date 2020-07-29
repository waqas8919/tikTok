import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mycolors.dart';
import 'package:tiktok_clone/manageAccount.dart';
import 'package:tiktok_clone/email.dart';
import 'package:tiktok_clone/settings.dart';
class manageAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
      home: ManageAccountHome(),
    );
  }
}
class ManageAccountHome extends StatefulWidget {
  @override
  _ManageAccountHomeState createState() => _ManageAccountHomeState();
}

class _ManageAccountHomeState extends State<ManageAccountHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: 70.0,
                padding: EdgeInsets.fromLTRB(0, 0, 16.0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ButtonTheme(
                       minWidth: 10.0,
                      child: RaisedButton(
                        elevation: 0,
                        color: Colors.white,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>setting()));
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: manage_backArrow,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Text(
                      "Manage my account",
                      style: TextStyle(
                          color: manage_AppbarTitle,
                          fontSize: 20.0,
                          fontFamily: 'Arimon',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.grey,
              ),
              SizedBox(
                height: 15.0,
              ),
              //Middle Section
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 16.0, 0),
                  child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "My TickCode",
                            style: TextStyle(
                              color: manage_AllTextlines,
                              decoration: TextDecoration.none,
                              fontSize: 15.0,
                              fontFamily: 'Roboton',
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //2nd
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Phone Number",
                            style: TextStyle(
                                color:manage_AllTextlines ,
                                decoration: TextDecoration.none,
                                fontSize: 15.0,
                              fontFamily: 'Roboton',
                            ),
                          ),
                          Text(
                            "+92********2",
                            style: TextStyle(
                                color: manage_phoneNum,
                                decoration: TextDecoration.none,
                                fontSize: 15.0,
                                fontFamily: 'Arimon'
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    //3rd
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Material(
                            color: Colors.transparent,
                            child: InkWell(

                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>email()));
                              },
                              child: Text(
                                "Email",
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                    fontSize: 15.0,
                                  fontFamily: 'Roboton',
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    //4th
                    Padding(
                      padding: const EdgeInsets.only(left:16.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Password",
                            style: TextStyle(
                                color: manage_AllTextlines,
                                decoration: TextDecoration.none,
                                fontSize: 15.0,
                              fontFamily: 'Roboton',
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //5th
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Security",
                            style: TextStyle(
                                color: manage_AllTextlines,
                                decoration: TextDecoration.none,
                                fontSize: 15.0,
                              fontFamily: 'Roboton',
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //6th
                    Padding(
                      padding: const EdgeInsets.only(left:16.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Save login info",
                            style: TextStyle(
                                color: manage_AllTextlines,
                                decoration: TextDecoration.none,
                                fontSize: 15.0,
                              fontFamily: 'Roboton',
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //7th
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Switch to Pro Account",
                            style: TextStyle(
                                color: manage_ProAccount,
                                decoration: TextDecoration.none,
                                fontSize: 15.0,
                              fontFamily: 'Roboton',
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                  ),
                ),
              ),
              //Bottom Section
              Container(
                height: 70.0,
                child: Text(
                  "Delete account",
                  style: TextStyle(
                      color: manage_deleteAcc,
                      decoration: TextDecoration.none,
                      fontSize: 15.0,
                    fontFamily: 'Roboton',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
