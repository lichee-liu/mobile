import 'package:flutter/material.dart';


class DemoItem extends StatelessWidget{
  DemoItem({Key key,this.index}):super (key: key);
  final int index;
  _getBottomItem(IconData icon, String text){
    return new Expanded(
      flex: 1,
      child: new Center(
        child:  new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(icon,size: 16.0,color: Colors.grey,),
            new Padding(padding: new EdgeInsets.only(left: 5.0)),
            new Text(text,style: TextStyle(
              color: Colors.grey,fontSize: 14.0
            ), overflow: TextOverflow.ellipsis,maxLines: 1,),

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  new Card(
        child: new FlatButton(onPressed: (){print("pressed");}, child: Container(
          padding: new EdgeInsets.only(top: 10.0,right: 10.0,bottom: 10.0),
          child:  new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Container(
                child: new Text("这里是描述------",style: new TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0
                ),
                maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                alignment: Alignment.topLeft,
              ),
              new Padding(padding: EdgeInsets.all(10.0)),
              new Row(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: <Widget>[
                  _getBottomItem(Icons.star, index.toString()),
                  _getBottomItem(Icons.link, "1000"),
                  _getBottomItem(Icons.subject, "1000"),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}

class DemoPage extends StatefulWidget{
  @override
  DemoPageState createState() => new DemoPageState();

}

class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar:  new AppBar(
        title:  new Text("Title"),
      ),
      body:  new ListView.builder(itemBuilder: (context,index){
        return  new DemoItem(index: index);
      },itemCount: 20,),
    );
  }
}

void main()=>runApp(new MaterialApp(home: new DemoPage()));