import 'package:flutter/material.dart';

void main()=>runApp( new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "hello world !",
      home:Scaffold(
        appBar:  AppBar(
          title: Text("welcome flutter"),
        ),
        body: Center(
          child: Text("hello world!"),
        ),        
      )

    );
  }

}