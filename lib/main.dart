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
import 'package:webfeed/webfeed.dart';

void main() => runApp(MaterialApp(
    title: 'Jogos da Sorte',
    initialRoute: '/',
    routes: {'/': (context) => MyApp(), '/about': (context) => About()}));

class MyApp extends StatelessWidget {
  Future<RssFeed> fetchResults() async {
    final response = await http
        .get('https://www.jogossantacasa.pt/web/SCRss/rssFeedCartRes');

    if (response.statusCode == 200) {
      var rssFeed = new RssFeed.parse(response.body);
      //print(rssFeed);
      return rssFeed;
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
        body: new FutureBuilder<RssFeed>(
          future: fetchResults(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return new ListView(shrinkWrap: true, children: <Widget>[
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
                Container(
                  child: Text('Euromilhões ${snapshot.data.items[0]}'),
                ),
                Container(
                  child: Text('M1lhão ${snapshot.data.items[2]}'),
                ),
                Container(
                  child: Text('Totoloto ${snapshot.data.items[3]}'),
                ),
                Container(
                  child: Text('Clássica ${snapshot.data.items[6]}'),
                ),
                Container(
                  child: Text('Popular ${snapshot.data.items[7]}'),
                ),
              ]);
            } else {
              return new Container(
                child: Text('loading'),
              );
            }
          },
        ));
  }
}
