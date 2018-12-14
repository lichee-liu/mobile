import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:  "",
      home: Scaffold(
        body: new Center(
          child: new ParentWidget(),
        ),
      ),
    );
  }
}
class ParentWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> new _PatentWidgetState();
}
class _PatentWidgetState extends State<ParentWidget>{
  bool _active  = false;
  void _handleTopBoxChanged(bool newValue){
    setState(() {
      _active = newValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new TapboxC(active: _active,onChanged: _handleTopBoxChanged),
    );
  }
}

class TapboxC extends StatefulWidget {
  TapboxC({Key key , this.active:false,@required this.onChanged }) :super (key:key);
  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  _TapboxCState createState()=> new _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {

  bool _highLight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highLight = true;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highLight = false;
    });
  }

  void _handTap() {
    widget.onChanged(!widget.active);
  }
  void _handleTapUp(TapUpDetails  detail) {
    setState(() {
      _highLight = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handTap,
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: new Container(
        child: new Center(
          child: new Text(widget.active ? 'Active' : 'inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highLight ? new Border.all(
              color:  Colors.teal[200] ,width: 10.0): null,
        ),
      ),
    );
  }
}


