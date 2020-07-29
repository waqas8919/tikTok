import 'package:flutter/material.dart';
class FirstTabScreen extends StatefulWidget {
  @override
  _FirstTabScreenState createState() => _FirstTabScreenState();
}

class _FirstTabScreenState extends State<FirstTabScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GridView.count(crossAxisCount: 3,
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
