import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class FollowerScreen extends StatefulWidget {
  @override
  _FollowerScreenState createState() => _FollowerScreenState();
}

class _FollowerScreenState extends State<FollowerScreen> {
  Widget eachlist (String asset,String title,String subtitle){
    return Container(
      height: 80,
      padding: EdgeInsets.only(left: 16.0),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage("asset"),
                ),
              ),
              SizedBox(width: 15.0,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("$title",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboton'
                    ),),
                  Text("$subtitle",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboton'
                    ),),
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              ButtonTheme(
                minWidth: 20,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  onPressed: (){},
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 0.5,color: Colors.black54
                      )
                  ),
                  child: Text(
                    "Follow back",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboton',
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.more_vert,
                  color:Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              eachlist("assets/images/girl.jpg","hassankhan12","hassan"),
              eachlist("assets/images/girl.jpg","hassankhan12","hassan"),
              eachlist("assets/images/girl.jpg","hassankhan12","hassan"),
              eachlist("assets/images/girl.jpg","hassankhan12","hassan"),
              eachlist("assets/images/girl.jpg","hassankhan12","hassan"),
              eachlist("assets/images/girl.jpg","hassankhan12","hassan"),
              eachlist("assets/images/girl.jpg","hassankhan12","hassan"),
              eachlist("assets/images/girl.jpg","hassankhan12","hassan"),
              eachlist("assets/images/girl.jpg","hassankhan12","hassan"),
              eachlist("assets/images/girl.jpg","hassankhan12","hassan"),
              eachlist("assets/images/girl.jpg","hassankhan12","hassan"),
              eachlist("assets/images/girl.jpg","hassankhan12","hassan"),
            ],
          ),
        )
      ),
    );
  }
}
