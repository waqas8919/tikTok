import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Login2EmailTab extends StatefulWidget {
  @override
  _Login2EmailTabState createState() => _Login2EmailTabState();
}

class _Login2EmailTabState extends State<Login2EmailTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 50.0,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email or Username'
              ),
            ),
            SizedBox(height: 25.0,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Password'
              ),
            ),
            SizedBox(height: 25.0,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Forget password?",
              style: TextStyle(
                  color: Colors.black,
                 fontWeight: FontWeight.bold,
              fontFamily: 'Roboton'),),
            ),
            SizedBox(height: 25.0,),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              onPressed: (){},
              child:  Text("Log in",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboton'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
