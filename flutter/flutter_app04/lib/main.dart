import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'listView',
      home: Scaffold(
        appBar: new AppBar(
         title: new Text("listView"),
        ),
        body: new ListView(
          children: <Widget>[
           /* new Image.network("http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg"),
            new Image.network("http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg"),
            new Image.network("http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg"),
            new Image.network("http://jspang.com/static/upload/20181111/G-wj-ZQuocWlYOHM6MT2Hbh5.jpg"),*/
            new ListTile(
              leading: new Icon(Icons.ac_unit),
              title: new Text("ac_unit"),
            ),new ListTile(
              leading: new Icon(Icons.satellite),
              title: new Text("satellite"),
            ),new ListTile(
              leading: new Icon(Icons.account_box),
              title: new Text("account_box"),
            ),new ListTile(
              leading: new Icon(Icons.verified_user),
              title: new Text("verified_user"),
            )
          ],
        )
      ),
    );
  }


}