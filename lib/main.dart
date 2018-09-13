import 'package:flutter/material.dart';
import 'cards/euromilhoes.dart';
import 'cards/milhao.dart';
import 'cards/classica.dart';
import 'cards/popular.dart';
import 'cards/totoloto.dart';

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
            EuromilhoesCard(
              number1: '1',
              number2: '2',
              number3: '3',
              number4: '4',
              number5: '5',
              star1: '1',
              star2: '2',
            ),
            MilhaoCard(milhaoNumber: '12345'),
            PopularCard(popularNumber: '12345'),
            ClassicaCard(classicaNumber: '12345'),
            TotolotoCard(
                number1: '1',
                number2: '2',
                number3: '3',
                number4: '4',
                number5: '5',
                luckNumber: '6'),
          ])),
    );
  }
}
