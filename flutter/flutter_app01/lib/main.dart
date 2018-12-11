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
          child: Text("hello world! sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss",
              textAlign: TextAlign.left,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            style: TextStyle(
              fontSize: 25.0,
              fontStyle: FontStyle.italic,//斜体
              color: Color.fromARGB(255,255, 150,150),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid
            ),
            ),
        ),        
      )

    );
  }

}