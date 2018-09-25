import 'package:flutter/material.dart';

class EuromilhoesCard extends StatelessWidget {
  EuromilhoesCard(
      {this.number1,
      this.number2,
      this.number3,
      this.number4,
      this.number5,
      this.star1,
      this.star2});

  final number1;
  final number2;
  final number3;
  final number4;
  final number5;
  final star1;
  final star2;

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
              new Icon(Icons.star_border,
                  size: 50.0, color: Colors.blueGrey[100]),
              new Text('$star1',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0))
            ]),
        new Stack(
            overflow: Overflow.visible,
            alignment: Alignment(0.0, 0.0),
            children: [
              new Icon(Icons.star_border,
                  size: 50.0, color: Colors.blueGrey[100]),
              new Text('$star2',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25.0))
            ]),
      ])
    ], mainAxisSize: MainAxisSize.min));
  }
}
