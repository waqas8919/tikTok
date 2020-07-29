import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SoundFirstTab extends StatefulWidget {
  @override
  _SoundFirstTabState createState() => _SoundFirstTabState();
}

class _SoundFirstTabState extends State<SoundFirstTab> {

  Widget eachBox(String title,String subtitle,String deeptitle){
      return Container(
        height: 90.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Container(
            height: 60.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.red
                  ),
                ),
                SizedBox(width: 10.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("$title",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'Roboton',
                      fontWeight: FontWeight.bold),),
                    Text("$subtitle",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontFamily: 'Roboton'),),
                    Text("$deeptitle",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontFamily: 'Roboton'),),
                  ],
                ),
              ],
            ),
          ),
            IconButton(
              icon: Icon(Icons.bookmark),
            )
          ],
        ),
      );
}
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("For You",style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontFamily: 'Roboton',
                        fontWeight: FontWeight.bold
                    ),),
                    Text("All",style: TextStyle(
                        color: Colors.black12,
                        fontSize: 15.0,
                        fontFamily: 'Roboton',
                        fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
              //1St Horizontal Box
              Container(
                height: 280,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 380,
                      padding: EdgeInsets.only(right: 16.0),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 0.5,color: Colors.grey
                              )
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          eachBox("Bandook","Nirvar Pannu","01.00"),
                          eachBox("Pooranviram","Akki Aryan","00:14"),
                          eachBox("Happy Birthday","Vitamin A","00:15"),
                        ],
                      ),
                    ),
                    Container(
                      width: 380,
                      padding: EdgeInsets.only(right: 16.0),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 0.5,color: Colors.grey
                              )
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          eachBox("Bandook","Nirvar Pannu","01.00"),
                          eachBox("Pooranviram","Akki Aryan","00:14"),
                          eachBox("Happy Birthday","Vitamin A","00:15"),
                        ],
                      ),
                    ),

                    Container(
                      width: 380,
                      padding: EdgeInsets.only(right: 16.0),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 0.5,color: Colors.grey
                              )
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          eachBox("Bandook","Nirvar Pannu","01.00"),
                          eachBox("Pooranviram","Akki Aryan","00:14"),
                          eachBox("Happy Birthday","Vitamin A","00:15"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Container(
                height: 90,
                decoration: BoxDecoration(
                  border:Border(
                    bottom: BorderSide(
                      width: 0.5,
                      color: Colors.grey
                    )
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Playlist",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Roboton',
                              fontWeight: FontWeight.bold
                          ),),
                        Text("All",
                          style: TextStyle(
                              color: Colors.black12,
                              fontSize: 15.0,
                              fontFamily: 'Roboton',
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.archive,
                          color: Colors.lightBlueAccent,
                        ),
                        SizedBox(width: 20,),
                        Text("Shuffle",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: 'Roboton',
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Text("Trending",style: TextStyle(
                   color: Colors.black,
                   fontSize: 15.0,
                   fontFamily: 'Roboton',
                   fontWeight: FontWeight.bold
               ),),
                   Text("All",style: TextStyle(
                       color: Colors.black12,
                       fontSize: 15.0,
                       fontFamily: 'Roboton',
                       fontWeight: FontWeight.bold
                   ),),
                 ],
               ),
              ),
              //2nd Horixantol box

              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 0.5,color: Colors.grey
                        )
                    )
                ),
                child: Column(
                  children: <Widget>[
                    eachBox("Bandook","Nirvar Pannu","01.00"),
                    eachBox("Pooranviram","Akki Aryan","00:14"),
                    eachBox("Happy Birthday","Vitamin A","00:15"),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}
