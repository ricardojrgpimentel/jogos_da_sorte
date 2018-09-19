import 'package:flutter/material.dart';
import 'cards/euromilhoes.dart';
import 'cards/milhao.dart';
import 'cards/classica.dart';
import 'cards/popular.dart';
import 'cards/totoloto.dart';
import './about.dart';
import 'utils/sidebar.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
    title: 'Jogos da Sorte',
    initialRoute: '/',
    routes: {'/': (context) => MyApp(), '/about': (context) => About()}));

class MyApp extends StatelessWidget {
  Future<String> fetchResults() async {
    final response = await http
        .get('https://www.jogossantacasa.pt/web/SCRss/rssFeedCartRes');

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load post');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados'),
        backgroundColor: Colors.green[700],
      ),
      drawer: Sidebar(),
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
        PopularCard(
            popularFirst: '12345',
            popularSecond: '12345',
            popularThird: '12345',
            popularForth: '12345'),
        ClassicaCard(
            classicaFirst: '12345',
            classicaSecond: '12345',
            classicaThird: '12345'),
        TotolotoCard(
            number1: '1',
            number2: '2',
            number3: '3',
            number4: '4',
            number5: '5',
            luckNumber: '6'),
        FutureBuilder<String>(
          future: fetchResults(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(child: Text('Data ${snapshot}'));
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return Container(child: Text('Loading'));
          },
        )
      ]),
    );
  }
}
