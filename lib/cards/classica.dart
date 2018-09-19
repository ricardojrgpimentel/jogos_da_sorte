import 'package:flutter/material.dart';

class ClassicaCard extends StatelessWidget {
  ClassicaCard({this.classicaFirst, this.classicaSecond, this.classicaThird});

  final classicaFirst;
  final classicaSecond;
  final classicaThird;
  @override
  Widget build(BuildContext context) {
    return new Card(
        child: new Column(children: <Widget>[
      new Center(
        child: new Container(
          child: new Image.asset(
            'images/classica.png',
            height: 60.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
      new Padding(
          padding: new EdgeInsets.all(8.0),
          child: new Column(children: <Widget>[
            new Text('1º $classicaFirst',
                textAlign: TextAlign.center,
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
            new Text('2º $classicaSecond',
                textAlign: TextAlign.center,
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
            new Text('3º $classicaThird',
                textAlign: TextAlign.center,
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
          ]))
    ], mainAxisSize: MainAxisSize.min));
  }
}
