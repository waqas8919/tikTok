import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ThirdTabScreen extends StatefulWidget {
  @override
  _ThirdTabScreenState createState() => _ThirdTabScreenState();
}

class _ThirdTabScreenState extends State<ThirdTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  GridView.count(crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
        children: List.generate(40, (index){
          return Container(
            color: Colors.blue,
            child: Card(
              elevation: 10.0,
              child: Container(

                child: new Text("Item : $index",
                  style: TextStyle(color: Colors.black,
                      fontSize: 15.0,
                      decoration: TextDecoration.none),),
              ),
            ),
          );
        }),
      ),
    );
  }
}

