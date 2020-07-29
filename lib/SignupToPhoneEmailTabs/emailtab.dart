import 'package:flutter/material.dart';
import 'package:tiktok_clone/mycolors.dart';

class EmailTab extends StatefulWidget {
  @override
  _EmailTabState createState() => _EmailTabState();
}

class _EmailTabState extends State<EmailTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60.0,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email address",
                    hintStyle: TextStyle(color: Colors.black)),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "By continuing, you agree to TikTok's ",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 13.0,
                          fontFamily: 'RobotoMedium',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.3,
                          height: 1.2,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 1.2),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 0.3, color: Colors.black))),
                        child: Text("Terms of",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: 1.2),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 0.3, color: Colors.black))),
                        child: Text("Use",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      Text(
                        " and confirm that you have read TikTok's",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 13.0,
                          fontFamily: 'RobotoMedium',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.3,
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: 1.2),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 0.3, color: Colors.black))),
                        child: Text("Privacy Policy. ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontFamily: 'Roboto',
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color: btn1,
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        onPressed: () {},
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 18.0,
                              fontFamily: 'Arimon',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
