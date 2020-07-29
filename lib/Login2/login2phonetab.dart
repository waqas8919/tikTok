import 'package:flutter/material.dart';
class Login2PhoneTab extends StatefulWidget {
  @override
  _Login2PhoneTabState createState() => _Login2PhoneTabState();
}

class _Login2PhoneTabState extends State<Login2PhoneTab> {
  var _countries =['US +1','PK +92','Uk +44'];
  var _countryItemSelected='US +1';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 70.0,),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: DropdownButton<String>(
                      items: _countries.map((String DropdownStringItem){
                        return DropdownMenuItem<String>(
                          value:DropdownStringItem,
                          child:Text(DropdownStringItem),
                        );
                      }).toList(),
                      onChanged: (String newValueSelected){
                        setState(() {
                          this._countryItemSelected= newValueSelected;
                        });
                      },
                      value: _countryItemSelected,
                    ),
                  hintText: "Phone Number"
                ),
              ),
            ),

            SizedBox(height: 30.0,),
            Container(
                height: 50,
                child:Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        onPressed: (){
                        },
                        child: Text("Send Code",
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 18.0,
                            fontFamily: 'Arimon'
                          ),),
                      ),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
