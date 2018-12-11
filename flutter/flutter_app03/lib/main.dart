import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'image',
      home: Scaffold(
        appBar: new AppBar(
         title: new Text("network image"),
        ),
        body: Center(
          child: new Container(
//            child: new Text("-----------",style: TextStyle(fontSize: 40.0),),
            child: new Image.network("http://jspang.com/static/myimg/blogtouxiang.jpg",scale: 1.0,
             /* child: new Image.asset(
                "",*/
              fit: BoxFit.scaleDown,
              repeat: ImageRepeat.repeat,//重复充满整个容器
//              color: Colors.purple,
//              colorBlendMode: BlendMode.multiply,
            ),
            width: 300.0,
            height: 200.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }


}