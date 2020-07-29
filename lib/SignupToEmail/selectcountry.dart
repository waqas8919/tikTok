import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/SignupToEmail/signupphoneEmail.dart';
import 'package:tiktok_clone/SignupToEmail/signupphoneEmail.dart';
class SelectCountriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectCountriesHome(),
    );
  }
}
class SelectCountriesHome extends StatefulWidget {
  @override
  _SelectCountriesHomeState createState() => _SelectCountriesHomeState();
}

class _SelectCountriesHomeState extends State<SelectCountriesHome> {

  Widget singleTextTile($sigleText){
    return Container(
      child: Material(
        color: Colors.white,
        child: ListTile(
          leading: Text($sigleText,style:TextStyle(
            color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,
            fontFamily: 'Arimon'
          ),),
        ),
      ),
    );
  }
  Widget eachTile(String $country, String $countryCode){
    return Container(
      decoration: BoxDecoration(

        border: Border(
          bottom: BorderSide(
            color: Colors.grey
          )
        )
      ),
      child: Material(
        color: Colors.white,
        child: ListTile(
          onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext bc)=>SignUpPhoneEmail()));
          },
          leading:  Text($country,style:TextStyle(
              color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w100,
              fontFamily: 'Arimon',
            letterSpacing: 0.6
          ),
          ),
          trailing:  Text($countryCode,style:TextStyle(
              color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w100,
              fontFamily: 'Arimon'
          ),),
        ),
      ),
    );
  }
  Widget abc(String $aToz){
    return Container(
      child:  Text($aToz,style:TextStyle(
          color: Colors.black87,fontSize: 16,fontWeight: FontWeight.w100,
          fontFamily: 'Arimon',
        decoration: TextDecoration.none
      ),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[

              //Top Section
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Material(
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext bc)=>SignUpPhoneEmail()));
                              },
                              child: Icon(Icons.close,
                              color: Colors.black,),
                            ),
                          ),
                          Text("Select country/region",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Arimon',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            decoration: TextDecoration.none
                          ),),
                          SizedBox(),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Material(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search countries and regions',
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10.9),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0,),
                          ButtonTheme(
                            minWidth: 15,
                            child: RaisedButton(
                              color: Colors.pink,
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              onPressed: (){},
                              child: Text("Search",
                                 style: TextStyle(color:Colors.white),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              //2nd Section
              Container(
                child: Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 16.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                singleTextTile('A'),
                                eachTile('Afghanistan','+93'),
                                eachTile('Afghanistan','+93'),
                                eachTile('Afghanistan','+93'),
                                eachTile('Afghanistan','+93'),
                                eachTile('Afghanistan','+93'),
                                eachTile('Afghanistan','+93'),
                                eachTile('Afghanistan','+93'),
                                eachTile('Afghanistan','+93'),
                                eachTile('Afghanistan','+93'),
                                eachTile('Afghanistan','+93'),
                                eachTile('Afghanistan','+93'),
                                eachTile('Afghanistan','+93'),
                                eachTile('Afghanistan','+93'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                           abc("A"),
                            abc("B"),
                            abc("C"),
                            abc("D"),
                            abc("E"),
                            abc("F"),
                            abc("G"),
                            abc("H"),
                            abc("I"),
                            abc("J"),
                            abc("K"),
                            abc("L"),
                            abc("M"),
                            abc("N"),
                            abc("O"),
                            abc("P"),
                            abc("Q"),
                            abc("R"),
                            abc("S"),
                            abc("T"),
                            abc("U"),
                            abc("V"),
                            abc("W"),
                            abc("X"),
                            abc("Y"),
                            abc("Z"),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
