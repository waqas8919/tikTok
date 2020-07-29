import 'package:flutter/material.dart';
import 'package:tiktok_clone/Login2/login2.dart';
import 'package:tiktok_clone/SignupToEmail/createUsername.dart';
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginHome(),
    );
  }
}
class LoginHome extends StatefulWidget {
  @override
  _LoginHomeState createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {

  Widget phoneEmailbtn(){
    return Container(
      child: ButtonTheme(
        minWidth: 230,
        child: RaisedButton(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext bc)=>LoginSecondScreen()));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text("Use phone / Email / username",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboton',
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget facebookbtn(){
    return Container(
      child: ButtonTheme(
        minWidth: 230,
        child: RaisedButton(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          onPressed: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text("Continue with Facebook ",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboton',
                        fontWeight: FontWeight.bold
                    ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget googlebtn(){
    return Container(
      child: ButtonTheme(
        minWidth: 230,
        child: RaisedButton(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          onPressed: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text("Continue with Google",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboton',
                        fontWeight: FontWeight.bold
                    ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget twitterbtn(){
    return Container(
      child: ButtonTheme(
        minWidth: 230,
        child: RaisedButton(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          onPressed: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text("Continue with Twitter",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboton',
                        fontWeight: FontWeight.bold
                    ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget instabtn(){
    return Container(
      child: ButtonTheme(
        minWidth: 230,
        child: RaisedButton(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          onPressed: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text("Continue with Instagram",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboton',
                        fontWeight: FontWeight.bold
                    ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.close,
            color: Colors.black,),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.monetization_on,
              color: Colors.black,),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 50.0,),
               Text("Log in to Tik Tok",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 22.0,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Roboton'
               ),
               ),
                SizedBox(height: 20.0,),
                Text("Manage your account.check notifications, comment and videos and more.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: 'Roboton'
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0,),
              Expanded(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      phoneEmailbtn(),
                      SizedBox(height: 20.0,),
                     facebookbtn(),
                      SizedBox(height: 20.0,),
                      googlebtn(),
                      SizedBox(height: 20.0,),
                      twitterbtn(),
                      SizedBox(height: 20.0,),
                      instabtn(),
                    ],
                  ),
                ),
              ),

               //Bottom Section
               Container(
                 height: 70,
                 child: RichText(
                   text: TextSpan(
                     text: "Don't have an account? ",
                     style: TextStyle(
                       color: Colors.black38,
                     ),
                    children: [
                      TextSpan(
                        text: "Sign up",
                       style: TextStyle(
                         color: Colors.red,
                         fontWeight: FontWeight.bold
                       )
                      )
                    ]
                   ),
                 ),
               )
                
              ],
            ),
          ),
        )
    );
  }
}

