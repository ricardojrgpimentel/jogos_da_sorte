import 'package:flutter/material.dart';

class MilhaoCard extends StatelessWidget {
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
      )
    ], mainAxisSize: MainAxisSize.min));
  }
}
