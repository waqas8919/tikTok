import 'package:flutter/material.dart';
class SoundSecondTab extends StatefulWidget {
  @override
  _SoundSecondTabState createState() => _SoundSecondTabState();
}

class _SoundSecondTabState extends State<SoundSecondTab> {
  Widget eachBox(String asset,String title,String subtitle,String deeptitle){
    return Container(
      height: 90.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 60.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(asset)
                    )
                  ),

                ),
                SizedBox(width: 10.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
            icon: Icon(Icons.bookmark,color: Colors.black,),
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
          children: <Widget>[
            eachBox("assets/images/girl.jpg","Bollywood", "Juancristobal Aliaga", "00:15"),
            eachBox("assets/images/tik.jpg","Follow me on musicaly as...", "samara_hurtt", "00:13"),
          ],
        ),
      ),
    );
  }
}
