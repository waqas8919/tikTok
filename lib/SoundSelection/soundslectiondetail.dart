import 'package:flutter/material.dart';
class SoundSelectList extends StatefulWidget {
  @override
  _SoundSelectListState createState() => _SoundSelectListState();
}

class _SoundSelectListState extends State<SoundSelectList> {
  Widget eachList(){
    return ListTile(
      leading: Container(
        width: 50,
        height: 60,
        child: Image.network("https://lh3.googleusercontent.com/Tdb4GpdHDH7pqe4uIglw1CJn63iQURDxHoJgXb44Y3BwEkQxUIALmloxn_pxC04h8Z-CWuHG9NnhvYwbO8pCk6tialmOwGjD=w1600-rj-nu-e365",
        fit: BoxFit.fill,),
      ),
      title: Text("Ali Maula Ali Maula....",
      style: TextStyle(color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 20),),
      subtitle: Text("Nusrat fateh Ali khan\n01:00",
        style: TextStyle(color: Colors.black38,
            fontWeight: FontWeight.w300,

            fontSize: 14),),
      trailing: Icon(
        Icons.turned_in_not
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: <Widget>[
            eachList(),
            eachList(),
            eachList(),
            eachList(),
            eachList(),
            eachList(),
            eachList(),
            eachList(),
            eachList(),
            eachList(),
            eachList(),
            eachList(),
          ],
          );

  }
}
