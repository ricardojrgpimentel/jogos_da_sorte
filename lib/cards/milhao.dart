import 'package:flutter/material.dart';

class MilhaoCard extends StatelessWidget {
  MilhaoCard({this.milhaoNumber});

  final milhaoNumber;

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: new Column(children: <Widget>[
      new Center(
        child: new Container(
          child: new Image.asset(
            'images/milhao.png',
            height: 60.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
      new Padding(
          padding: new EdgeInsets.all(8.0),
          child: new Text('$milhaoNumber',
              textAlign: TextAlign.center,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)))
    ], mainAxisSize: MainAxisSize.min));
  }
}
