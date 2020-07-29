import 'package:flutter/material.dart';
class DiscoverData extends StatefulWidget {
  DiscoverData({Key key}) : super(key: key);
  @override
  _DiscoverDataState createState() => _DiscoverDataState();
}

class _DiscoverDataState extends State<DiscoverData> {
  @override
  Widget build(BuildContext context) {
    Widget myList(String title,String subtitle,String btnText){
      return Container(
        child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 0.5,color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(100)
                ),

                child: CircleAvatar(
                 backgroundColor: Colors.transparent,
                  child:Text(
                      "#",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                ),
              ),
              title: Text(
                "$title",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              subtitle: Text(
                "$subtitle",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w200
                ),
              ),
              trailing: ButtonTheme(
                minWidth: 20,
                height: 20,
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 6.0,vertical: 6.0),
                  onPressed: (){},
                  color: Colors.black12,
                  child: Text(
                    "$btnText",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
      );
    }
 Widget myBox(){
      return ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 140,
            height: 200,
          child: Image.asset("assets/images/dicpic1.jpg",fit: BoxFit.fill,),
            ),
          SizedBox(width: 5.0,),
          Container(
            width: 140,

            child: Image.asset("assets/images/dicoverBoxpic4.jpg",fit: BoxFit.fill,),
          ),
          SizedBox(  width: 5.0,),
          Container(
            width: 140,
            child: Image.asset("assets/images/dicoverBoxpic6.jpg",fit: BoxFit.fill,),
          ),
          SizedBox(  width: 5.0,),
          Container(
            width: 140,
            child: Image.asset("assets/images/dicoverBoxpic5.png",fit: BoxFit.fill,),
          ),
          SizedBox(  width: 5.0,),
          Container(
            width: 140,
            child: Image.asset("assets/images/dicpic2.jpg",fit: BoxFit.fill,),
          ),
          SizedBox(width: 5.0,),
          Container(
            width: 140,
            child: Image.asset("assets/images/dicoverBoxpic5.png",fit: BoxFit.fill,),
          ),
          SizedBox(  width: 5.0,),
          Container(
            width: 140,
            child: Image.asset("assets/images/dicoverBoxpic6.jpg",fit: BoxFit.fill,),
          ),
          SizedBox(  width: 5.0,),
          Container(
            width: 140,
            child: Image.asset("assets/images/dicpic2.jpg",fit: BoxFit.fill,),
          ),
          SizedBox(  width: 5.0,),
          Container(
            width: 140,
            child: Image.asset("assets/images/dicoverBoxpic5.png",fit: BoxFit.fill,),
          ),
          SizedBox(  width: 5.0,),
          Container(
            width: 140,
            child: Image.asset("assets/images/dicpic2.jpg",fit: BoxFit.fill,),
          ),
        ],
      );
 }
    return Container(
       child: Column(
         children: <Widget>[
           myList("GiveMe5WithSpark5","Tranding Hashtag","116.4M"),
           Container(
             padding: EdgeInsets.symmetric(horizontal: 16.0),
             height: 200,
             child: myBox(),
           ),
           myList("pkcricketfever","Tranding Hashtag","2.2B"),
           Container(
             padding: EdgeInsets.symmetric(horizontal: 16.0),
             height: 200,
             child: myBox(),
           ),
         ],
       ),
    );
  }
}
