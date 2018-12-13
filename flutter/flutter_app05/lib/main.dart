import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child:  new Row(
        children: [
          new Expanded(
              child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: new Text("test text 1",style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  new Text( "test text 2",style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                  ),
                ],
              ),
          ),
          new Icon(Icons.star,color: Colors.red[500],),
          new Text('41'),
        ],
      ),
    );

    return new MaterialApp(
      home: new Scaffold(
        body: new ListView(
          children: <Widget>[
            new Image.asset("test.jpg",
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            new Container(
              margin: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildButtonColumn(Icons.call, 'CALL'),
                  _buildButtonColumn(Icons.near_me, 'ROUTE'),
                  _buildButtonColumn(Icons.share, 'SHARE'),

                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.only(left: 30.0,right: 30.0),
              child: new Text("test text 3"),
            ),
          ],
        )
      ),
  );
  }

  Column _buildButtonColumn(IconData icon,String  label){
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Icon(icon,color: Colors.lightBlue[400],),
        new Container(
          margin: EdgeInsets.only(top: 8.0),
          child: new Text(label,style: new TextStyle(
            fontSize: 12.0,
            fontWeight:  FontWeight.w400,
            color: Colors.lightBlue[400]
          ),),
        )
      ],
    );
  }
}

void main()=>runApp(new MyApp());