import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/SignupToEmail/createUsername.dart';
import 'package:tiktok_clone/SignupToEmail/entercode.dart';

class PasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PasswordScreenHome(),
    );
  }
}

class PasswordScreenHome extends StatefulWidget {
  @override
  _PasswordScreenHomeState createState() => _PasswordScreenHomeState();
}

class _PasswordScreenHomeState extends State<PasswordScreenHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Sign Up",
            style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arimon',
                letterSpacing: 0.5),
          ),
          centerTitle: true,
          // actions: <Widget>[
          //   IconButton(
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (BuildContext bc) => PasswordScreen()));
          //     },
          //     icon: Icon(
          //       Icons.monetization_on,
          //       color: Colors.grey,
          //     ),
          //   )
          // ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Container(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: <Widget>[
                //       InkWell(
                //         onTap: () {
                //           Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (BuildContext bc) => EnterCode()));
                //         },
                //         child: Icon(
                //           Icons.arrow_back,
                //           color: Colors.black,
                //         ),
                //       ),
                //       Text(
                //         "Sign up",
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold,
                //             color: Colors.black,
                //             fontSize: 20.0,
                //             fontFamily: 'Roboton'),
                //       ),
                //       // IconButton(
                //       //   onPressed: () {},
                //       //   icon: Icon(
                //       //     Icons.monetization_on,
                //       //     color: Colors.black,
                //       //   ),
                //       // )
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Create password",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboton',
                        fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: RichText(
                    text: TextSpan(
                        text:
                            "Use 8-20 characters from at least 2 catagories. letters,numbers,special characters",
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
                  maxLength: 20,
                  obscureText: true,
                  decoration: InputDecoration(
                      helperStyle: TextStyle(color: Colors.white),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                      suffix: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.black38),
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 15,
                            ),
                          ))),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 50,
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      color: Colors.grey[200],
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext bc) =>
                                    UserNameScreen()));
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Roboton',
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
      ),
    );
  }
}
