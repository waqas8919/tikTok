import 'package:flutter/material.dart';
import 'package:tiktok_clone/SignupToEmail/password.dart';
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
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RichText(
              text: TextSpan(
                text: "By continuing, you agree to Musictok ",
                style: TextStyle(color: Colors.grey, fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Terms of Use',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: " and confirm that you have read Musictok ",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  TextSpan(
                    text: 'Privacy Policy.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            // Container(
            //   alignment: Alignment.centerLeft,
            //   child: Column(
            //     children: <Widget>[
            //       Row(
            //         children: <Widget>[
            //           Text(
            //             "By continuing, you agree to TikTok's ",
            //             style: TextStyle(
            //               color: Colors.black38,
            //               fontSize: 13.0,
            //               fontFamily: 'RobotoMedium',
            //               fontWeight: FontWeight.w500,
            //               letterSpacing: 0.3,
            //               height: 1.2,
            //             ),
            //           ),
            //           Container(
            //             padding: EdgeInsets.only(bottom: 1.2),
            //             decoration: BoxDecoration(
            //                 border: Border(
            //                     bottom: BorderSide(
            //                         width: 0.3, color: Colors.black))),
            //             child: Text("Terms of",
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 13.0,
            //                   letterSpacing: -0.5,
            //                   fontWeight: FontWeight.w600,
            //                 )),
            //           ),
            //         ],
            //       ),
            //       Row(
            //         children: <Widget>[
            //           Container(
            //             padding: EdgeInsets.only(bottom: 1.2),
            //             decoration: BoxDecoration(
            //                 border: Border(
            //                     bottom: BorderSide(
            //                         width: 0.3, color: Colors.black))),
            //             child: Text("Use",
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 13.0,
            //                   letterSpacing: -0.5,
            //                   fontWeight: FontWeight.w600,
            //                 )),
            //           ),
            //           Text(
            //             " and confirm that you have read TikTok's",
            //             style: TextStyle(
            //               color: Colors.black38,
            //               fontSize: 13.0,
            //               fontFamily: 'RobotoMedium',
            //               fontWeight: FontWeight.w500,
            //               letterSpacing: 0.3,
            //               height: 1.2,
            //             ),
            //           ),
            //         ],
            //       ),
            //       Row(
            //         children: <Widget>[
            //           Container(
            //             padding: EdgeInsets.only(bottom: 1.2),
            //             decoration: BoxDecoration(
            //                 border: Border(
            //                     bottom: BorderSide(
            //                         width: 0.3, color: Colors.black))),
            //             child: Text("Privacy Policy. ",
            //                 style: TextStyle(
            //                   color: Colors.black,
            //                   fontSize: 13.0,
            //                   fontFamily: 'Roboto',
            //                   letterSpacing: -0.5,
            //                   fontWeight: FontWeight.w600,
            //                 )),
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            // ),

            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                  height: 50,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: Colors.grey[200],
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext bc) =>
                                        PasswordScreen()));
                          },
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
                  )),
            )
          ],
        ),
      ),
    );
  }
}
