
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/sound.dart';
import 'package:tiktok_clone/tiktko_Interface.dart';
import 'package:tiktok_clone/post.dart';
import 'package:tiktok_clone/record.dart';
import 'package:tiktok_clone/sound.dart';
class Record extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: RecordHomePage(),
    );
  }
}
class RecordHomePage extends StatefulWidget {
  @override
  _RecordHomePageState createState() => _RecordHomePageState();
}

class _RecordHomePageState extends State<RecordHomePage> {
  void _onPoup(context){
    showModalBottomSheet(context: context,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        builder: (BuildContext bc){
      return Container(
        color: Colors.transparent,
        child: SoundScreen(),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 20,
                              child: ButtonTheme(
                                minWidth: 30.0,

                                child: RaisedButton(
                                  elevation: 0,
                                  color: Colors.transparent,
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>tiktokInterface()));
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color:Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              color:Colors.transparent,
                              child: InkWell(
                                onTap: (){
                                 _onPoup(context);
                                },
                                child: Container(
                                  child: Row(
                                   children: <Widget>[
                                     Icon(
                                       Icons.library_music,
                                       color: Colors.white,
                                     ),
                                     SizedBox(width: 5.0,),
                                     Text(
                                           "Sounds",
                                       style: TextStyle(
                                         color: Colors.white,
                                         fontSize: 15.0,
                                         decoration: TextDecoration.none,
                                         fontFamily: 'Arimon',
                                       ),
                                     )
                                   ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox()
                          ],
                        ),
                      ),
                      //Sidebar
                      Container(
                        width: 90.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Column(
                             children: <Widget>[
                               Icon(
                                 Icons.flip_to_front,
                                 color: Colors.white,
                                 size: 30.0,
                               ),
                               SizedBox(height: 5.0,),
                               Text(
                                 "Flip",
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontFamily: 'Roboton',
                                   fontSize: 12.0,
                                   decoration: TextDecoration.none
                                 ),
                               )
                             ],
                            ),
                            SizedBox(height: 15.0,),
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.shutter_speed,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  "Speed",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboton',
                                      fontSize: 12.0,
                                      decoration: TextDecoration.none
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 15.0,),
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  "Beauty",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboton',
                                      fontSize: 12.0,
                                      decoration: TextDecoration.none
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 15.0,),
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.filter_tilt_shift,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  "Filters",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboton',
                                      fontSize: 12.0,
                                      decoration: TextDecoration.none
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 15.0,),
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.timer,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  "Timer",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboton',
                                      fontSize: 12.0,
                                      decoration: TextDecoration.none
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 15.0,),
                            Column(
                              children: <Widget>[
                                Icon(
                                  Icons.flash_auto,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  "Flash",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboton',
                                      fontSize: 12.0,
                                      decoration: TextDecoration.none
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 15.0,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //Bottom Section
                Container(
                  height: 200.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //1st
                      Column(
                        children: <Widget>[
                          Container(
                            width: 45.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Colors.transparent
                            ),
                            child: Center(
                              child: Text(
                                "0.3x",
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontFamily: 'Roboton',
                                  fontSize: 12.0,
                                  decoration: TextDecoration.none
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 50.0,),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Colors.blue
                            ),
                          ),
                          Container(
                            width: 45.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                                color: Colors.transparent
                            ),
                            child: Center(
                              child: Text(
                                "Effects",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Roboton',
                                    fontSize: 12.0,
                                    decoration: TextDecoration.none
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    //2nd
                     Column(
                       children: <Widget>[
                         Container(
                           width: 45.0,
                           height: 30.0,
                           decoration: BoxDecoration(
                               color: Colors.transparent
                           ),
                           child: Center(
                             child: Text(
                               "0.5x",
                               style: TextStyle(
                                   color: Colors.white60,
                                   fontFamily: 'Roboton',
                                   fontSize: 12.0,
                                   decoration: TextDecoration.none
                               ),
                             ),
                           ),
                         ),
                         SizedBox(height: 105.0,),
                         Container(
                           width: 40.0,
                           height: 30.0,
                           decoration: BoxDecoration(

                           ),
                           child: Center(
                             child: Text(
                               "60s",
                               style: TextStyle(
                                   color: Colors.white60,
                                   fontFamily: 'Roboton',
                                   fontSize: 12.0,
                                   decoration: TextDecoration.none
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                    //3rd
                      Column(
                        children: <Widget>[
                          Container(
                            width: 45.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                                color: Colors.transparent
                            ),
                            child: Center(
                              child: Text(
                                "0.3x",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontFamily: 'Roboton',
                                    fontSize: 12.0,
                                    decoration: TextDecoration.none
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 50.0,),
                          FlatButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Post()));
                              },
                            child: Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                  color:Colors.red,
                                borderRadius: BorderRadius.circular(100.0)
                              ),
                            ),
                          ),
                          SizedBox(height: 15.0,),
                          Text("15s",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontFamily: 'Roboto',
                                decoration: TextDecoration.none
                            ),),
                          SizedBox(height: 10.0,),
                          Text(".",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: 'Roboto',
                                decoration: TextDecoration.none
                            ),),
                        ],
                      ),
                   //4th
                     Column(
                       children: <Widget>[
                         Container(
                           width: 45.0,
                           height: 30.0,
                           decoration: BoxDecoration(

                           ),
                           child: Center(
                             child: Text(
                               "0.5x",
                               style: TextStyle(
                                   color: Colors.white60,
                                   fontFamily: 'Roboton',
                                   fontSize: 12.0,
                                   decoration: TextDecoration.none
                               ),
                             ),
                           ),
                         ),
                         SizedBox(height: 115,),
                         Container(
                           decoration: BoxDecoration(

                           ),
                           child: Center(
                             child: Text(
                               "Templates",
                               style: TextStyle(
                                   color: Colors.white60,
                                   fontFamily: 'Roboton',
                                   fontSize: 12.0,
                                   decoration: TextDecoration.none
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   //5th
                      Column(
                        children: <Widget>[
                          Container(
                            width: 45.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                                color: Colors.transparent
                            ),
                            child: Center(
                              child: Text(
                                "0.3x",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontFamily: 'Roboton',
                                    fontSize: 12.0,
                                    decoration: TextDecoration.none
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 50.0,),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                color: Colors.white
                            ),
                          ),
                          Container(
                            width: 45.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                                color: Colors.transparent
                            ),
                            child: Center(
                              child: Text(
                                "Upload",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Roboton',
                                    fontSize: 12.0,
                                    decoration: TextDecoration.none
                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ],
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
