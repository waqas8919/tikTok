import 'package:flutter/material.dart';
class InboxOneData extends StatefulWidget {
  @override
  _InboxOneDataState createState() => _InboxOneDataState();
}

class _InboxOneDataState extends State<InboxOneData> {
  Widget firstTile(){
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/dicpic1.jpg"),
      ),
      title: Text("AtherKazmi109",
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0
        ),
      ),
      subtitle: Text("liked your video",
        style: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.bold,
            fontSize: 14.0
        ),
      ),
      trailing: Container(
        width: 60,
        height: 50,
        decoration: BoxDecoration(
           color: Colors.black
        ),
        child: Image.asset("assets/images/dicoverBoxpic3.jpg",fit: BoxFit.fill,) ,
      ),
    );
  }
  Widget secondTile(){
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/images/dicoverBoxpic4.jpg"),
      ),
      title: Text("AtherKazmi109",
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0
        ),
      ),
      subtitle: Text("started following you",
        style: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.bold,
            fontSize: 14.0
        ),
      ),
      trailing: ButtonTheme(
        minWidth: 30,
        child: RaisedButton(
          color: Colors.pink,
          onPressed: (){},
          child: Text("Follow back",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.0
          ),),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.transparent,
      child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text("Today",
                style: TextStyle(
                    color: Colors.black12,
                    fontSize: 14.0
                ),
              ),
            ),
            firstTile(),
            secondTile(),
            firstTile(),
            secondTile(),
            firstTile(),
            secondTile(),
            firstTile(),
            secondTile(),
            firstTile(),
            secondTile(), firstTile(),
            secondTile(),
          ],
      ),
    );
  }
}
