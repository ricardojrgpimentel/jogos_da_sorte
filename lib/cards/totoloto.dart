import 'package:flutter/material.dart';

class TotolotoCard extends StatelessWidget {
  TotolotoCard(
      {this.number1,
      this.number2,
      this.number3,
      this.number4,
      this.number5,
      this.luckNumber});
  final number1;
  final number2;
  final number3;
  final number4;
  final number5;
  final luckNumber;
  @override
  Widget build(BuildContext context) {
    return new Card(
        child: new Column(children: <Widget>[
      new Center(
        child: new Container(
          child: new Image.asset(
            'images/totoloto.png',
            height: 60.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
      new Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        new Stack(
            overflow: Overflow.visible,
            alignment: Alignment(0.0, 0.0),
            children: [
              new Icon(Icons.panorama_fish_eye,
                  size: 40.0, color: Colors.blueGrey[100]),
              new Text('$number1',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0))
            ]),
        new Stack(
            overflow: Overflow.visible,
            alignment: Alignment(0.0, 0.0),
            children: [
              new Icon(Icons.panorama_fish_eye,
                  size: 40.0, color: Colors.blueGrey[100]),
              new Text('$number2',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0))
            ]),
        new Stack(
            overflow: Overflow.visible,
            alignment: Alignment(0.0, 0.0),
            children: [
              new Icon(Icons.panorama_fish_eye,
                  size: 40.0, color: Colors.blueGrey[100]),
              new Text('$number3',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0))
            ]),
        new Stack(
            overflow: Overflow.visible,
            alignment: Alignment(0.0, 0.0),
            children: [
              new Icon(Icons.panorama_fish_eye,
                  size: 40.0, color: Colors.blueGrey[100]),
              new Text('$number4',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0))
            ]),
        new Stack(
            overflow: Overflow.visible,
            alignment: Alignment(0.0, 0.0),
            children: [
              new Icon(Icons.panorama_fish_eye,
                  size: 40.0, color: Colors.blueGrey[100]),
              new Text('$number5',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0))
            ]),
        new Stack(
            overflow: Overflow.visible,
            alignment: Alignment(0.0, 0.0),
            children: [
              new Icon(Icons.grade, size: 40.0, color: Colors.blueGrey[100]),
              new Text('$luckNumber',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0))
            ]),
      ])
    ], mainAxisSize: MainAxisSize.min));
  }
}
