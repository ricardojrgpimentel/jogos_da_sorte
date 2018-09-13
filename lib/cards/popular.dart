import 'package:flutter/material.dart';

class PopularCard extends StatelessWidget {
  PopularCard({this.popularNumber});

  final popularNumber;
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
          child: new Text('$popularNumber',
              textAlign: TextAlign.center,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)))
    ], mainAxisSize: MainAxisSize.min));
  }
}
