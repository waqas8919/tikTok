import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/friend.dart';
class FollowingTabScreen extends StatefulWidget {
  @override
  _FollowingTabScreenState createState() => _FollowingTabScreenState();
}

class _FollowingTabScreenState extends State<FollowingTabScreen> {
  Widget eachfollowing(String asset, String title,String subtitle){
    return ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>FriendScreen()));
      },
      leading: CircleAvatar(
        backgroundImage: AssetImage("asset"),
      ),
      title: Text("$title",
      style: TextStyle(
        color: Colors.black,
       fontSize: 16.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboton'
      ),),
      subtitle: Text("$subtitle",
        style: TextStyle(
            color: Colors.black38,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboton'
        ),),
      trailing: Container(
        child: ButtonTheme(
          child: RaisedButton(
            onPressed: (){},
            color: Colors.transparent,
            elevation: 0,
            highlightElevation: 1.0,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black38,width: 0.5)
            ),
            child: Text("Following",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontFamily: 'Roboton',
              fontWeight: FontWeight.w200
            ),),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        color: Colors.white,
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 40,
                  margin: EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 10.0),
                  child: TextField(
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     filled: true,
                     fillColor: Colors.black12,
                     prefixIcon: Icon(Icons.search),
                     hintText: "Search",),
                    style: TextStyle(
                      fontFamily:"Roboton",
                      fontWeight: FontWeight.w100
                    ),
                  ),
                ),
                eachfollowing("assets/images/girl.jpg","fizza_offical","fizza"),
                eachfollowing("assets/images/girl.jpg","nehaoffical","Vampire"),
                eachfollowing("assets/images/girl.jpg","nehaoffical","Vampire"),
                eachfollowing("assets/images/girl.jpg","nehaoffical","Vampire"),
                eachfollowing("assets/images/girl.jpg","nehaoffical","Vampire"),
                eachfollowing("assets/images/girl.jpg","nehaoffical","Vampire"),
                eachfollowing("assets/images/girl.jpg","nehaoffical","Vampire"),
                eachfollowing("assets/images/girl.jpg","nehaoffical","Vampire"),
                eachfollowing("assets/images/girl.jpg","nehaoffical","Vampire"),
                eachfollowing("assets/images/girl.jpg","nehaoffical","Vampire"),
                eachfollowing("assets/images/girl.jpg","nehaoffical","Vampire"),
              ],
            ),
          ),
      ),
    );
  }
}
