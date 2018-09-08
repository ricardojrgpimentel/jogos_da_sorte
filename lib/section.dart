import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Row(children: <Widget>[
        new Container(
          child: new Image.asset(
            'images/milhoes.png',
            height: 60.0,
            fit: BoxFit.cover,
          ),
        )
      ]),
    );
  }
}
