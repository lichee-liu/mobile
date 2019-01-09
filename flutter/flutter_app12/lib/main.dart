import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero({Key key,this.photo,this.onTap,this.width});

  final String photo;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: width,
      child: new Hero(tag: photo, child: new Material(
        color: Colors.transparent,
        child: new InkWell(
          child: new Image.asset(photo,fit: BoxFit.contain,),
          onTap: onTap,
        ),
      )),
    );
  }
}

class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var timeDilation = 5.0;
    return new Scaffold(
      appBar: new AppBar(
        title:  const Text("basic hero Animation"),
      ),
      body: new Center(
        child:  new PhotoHero(
          photo: 'test.jpg',
          width: 300.0,
          onTap: (){
            print("push");
            Navigator.of(context).push(new MaterialPageRoute<Null>(
              builder: (BuildContext context){
                return new Scaffold(
                  appBar: new AppBar(
                    title: const Text('Flippers Page'),
                  ),
                  body: new Container(
                    color: Colors.lightBlueAccent,
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.topLeft,
                    child: new PhotoHero(
                        photo: 'test.jpg',
                        width: 100.0,
                        onTap: (){
                          Navigator.of(context).pop();
                        }
                    ),
                  ),
                );
              }
            ));
          },
        ),
      ),
    );
  }
}

void main()=> runApp(new MaterialApp(home: new HeroAnimation(),));