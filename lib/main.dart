import 'package:flutter/material.dart';
import 'cards/euromilhoes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogos da Sorte',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Jogos da Sorte'),
            backgroundColor: Colors.green[700],
          ),
          body: new ListView(shrinkWrap: true, children: <Widget>[
            EuromilhoesCard(),
            EuromilhoesCard(),
            EuromilhoesCard(),
            EuromilhoesCard(),
            EuromilhoesCard(),
            EuromilhoesCard(),
            EuromilhoesCard(),
            EuromilhoesCard(),
            EuromilhoesCard(),
          ])),
    );
  }
}
