import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mycolors.dart';
import 'package:tiktok_clone/manageAccount.dart';
import 'package:tiktok_clone/me.dart';
class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: SettingHome(),
    );
  }
}

class SettingHome extends StatefulWidget {
  @override
  _SettingHomeState createState() => _SettingHomeState();
}

class _SettingHomeState extends State<SettingHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: <Widget>[
              //Top Section
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Container(
                  height: 60.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    ButtonTheme(
                      minWidth: 30.0,
                      child: RaisedButton(
                        elevation: 0,
                        color: Colors.white,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>me()));
                        },
                        child: Icon(Icons.arrow_back,
                        color:setting_backArrow ,
                        size: 30.0,),
                      ),
                    ),
                      Text(
                        "Settings and privacy",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: setting_AppbarTitle,
                          fontFamily: 'Arimon',
                          decoration: TextDecoration.none
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.grey,
              ),

              //Scrollview Section

              Expanded(
                child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(
                                height: 21.0,
                              ),
                              Text(
                                "ACCOUNT",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: setting_AccountAllTitleTxt,
                                    fontFamily: 'Arimno',
                                    decoration: TextDecoration.none
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.person_outline,
                                  color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>manageAccount()));
                                      },
                                      child: Text(
                                        "Manage my account",
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'Roboton',
                                            color: setting_allIconsTitleTxt,
                                            decoration: TextDecoration.none,
                                          fontWeight: FontWeight.bold
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.lock_outline,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Privacy and Safety",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.videocam,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Content preferences",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.account_balance_wallet,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Balance",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.redo,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Share profile",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 21.0,
                              ),
                              //Divider
                              Divider(
                                height: 1,
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 21.0,
                              ),

                              // In Scrollview 2nd Section

                              Text(
                                "GENERAL",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Aeimon',
                                    fontWeight: FontWeight.bold,
                                    color: setting_AccountAllTitleTxt,
                                    decoration: TextDecoration.none
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.notifications_none,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Push notifications",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.language,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Language",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.beach_access,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Digital Wellbeing",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.accessibility,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Accessibility",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.data_usage,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Data Saver",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 21.0,
                              ),
                              //Divider
                              Divider(
                                height: 1,
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 21.0,
                              ),

                              //IN Scrollview 3rd Section

                              Text(
                                "SUPPORT",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Arimon',
                                    fontWeight: FontWeight.bold,
                                    color: setting_AccountAllTitleTxt,
                                    decoration: TextDecoration.none
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.notifications_none,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Report a problem",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.language,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Help Center",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.beenhere,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Safety Center",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),


                              SizedBox(
                                height: 21.0,
                              ),
                              //Divider
                              Divider(
                                height: 1,
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 21.0,
                              ),

                              //In Scrollview Section4

                              Text(
                                "ABOUT",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Arimon',
                                    fontWeight: FontWeight.bold,
                                    color:setting_AccountAllTitleTxt,
                                    decoration: TextDecoration.none
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.branding_watermark,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Terms of Use",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.contact_mail,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Community Guideliness",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.do_not_disturb_alt,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Privacy Policy",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.copyright,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Copyright Policy",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              //Divider
                              Divider(
                                height: 1,
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 21.0,
                              ),

                              //In Scrollview Section5

                              Row(
                                children: <Widget>[
                                  Icon(Icons.storage,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Storage",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.add,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Add account",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 21.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.loop,
                                    color: setting_allIcons,),
                                  SizedBox(
                                    width: 21.0,
                                  ),
                                  Text(
                                    "Log out",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: 'Roboton',
                                        color: setting_allIconsTitleTxt,
                                        decoration: TextDecoration.none
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 50.0,
                              ),

                              Text(
                                "v16.0.43(2021600430)",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Roboton',
                                    color: Colors.grey,
                                    decoration: TextDecoration.none
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                            ],
                          ),
                        ),
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
