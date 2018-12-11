import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'text',
      home: Scaffold(
        body: Center(
          child: new Container(
            child: new Text("hello world !",
              style: TextStyle(fontSize: 40.0),
            ),
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
            padding: const EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0),
            margin: const EdgeInsets.all(10.0),
           /* color: Colors.lightBlue,*/
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple]
              ),
              border: Border.all(width: 2.0,color: Colors.red),
            ),

          ),
        )
      ),
    );
  }
  
}