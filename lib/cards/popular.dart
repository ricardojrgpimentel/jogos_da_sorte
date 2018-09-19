import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  PopularCard(
      {this.popularFirst,
      this.popularSecond,
      this.popularThird,
      this.popularForth});

  final popularFirst;
  final popularSecond;
  final popularThird;
  final popularForth;
  @override
  Widget build(BuildContext context) {
    return new Card(
        child: new Column(children: <Widget>[
      new Center(
        child: new Container(
          child: new Image.asset(
            'images/popular.png',
            height: 60.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
      new Padding(
          padding: new EdgeInsets.all(8.0),
          child: new Column(
            children: <Widget>[
              new Text('1º $popularFirst',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0)),
              new Text('2º $popularSecond',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0)),
              new Text('3º $popularThird',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0)),
              new Text('4º $popularForth',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0)),
            ],
          ))
    ], mainAxisSize: MainAxisSize.min));
  }
}
