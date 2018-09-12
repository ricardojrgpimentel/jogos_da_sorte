import 'package:flutter/material.dart';

class EuromilhoesCard extends StatelessWidget {
  EuromilhoesCard({this.numbers, this.stars});

  final numbers;
  final stars;

  @override
  Widget build(BuildContext context) {
    return new Card(
        child: new Column(children: <Widget>[
      new Center(
        child: new Container(
          child: new Image.asset(
            'images/milhoes.png',
            height: 60.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
      new Center(
        child: new Text('$numbers / $stars'),
      )
    ], mainAxisSize: MainAxisSize.min));
  }
}
