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

///
/// Euromilhoes
/// /\d{1,2} \d{1,2} \d{1,2} \d{1,2} \d{1,2} \+ \d{1,2} \d{1,2}/g
/// M1lhao
/// /\w{3} \d{5}/g
/// Popular
/// /\d{5}/g
/// Classica
/// /\d{5}/g
/// Totoloto
/// /\d{1,2} \d{1,2} \d{1,2} \d{1,2} \d{1,2} \+ \d{1,2}/g
///

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
              /// Regex to get the info
              /// Euromilhoes
              RegExp regExpEuromilhoes = new RegExp(
                r"\d{1,2} \d{1,2} \d{1,2} \d{1,2} \d{1,2} \+ \d{1,2} \d{1,2}",
                caseSensitive: false,
                multiLine: false,
              );
              RegExp singleKeyRegExpEuromilhoes = new RegExp(
                r"\d{1,2}",
                caseSensitive: false,
                multiLine: false,
              );

              /// Milhao
              RegExp regExpMilhao = new RegExp(
                r"\w{3} \d{5}",
                caseSensitive: false,
                multiLine: false,
              );

              /// Totoloto
              RegExp regExpTotoloto = new RegExp(
                r"\d{1,2} \d{1,2} \d{1,2} \d{1,2} \d{1,2} \+ \d{1,2}",
                caseSensitive: false,
                multiLine: false,
              );
              RegExp singleKeyRegExpTotoloto = new RegExp(
                r"\d{1,2}",
                caseSensitive: false,
                multiLine: false,
              );

              /// Popular
              RegExp regExpPopular = new RegExp(
                r"\d{5}",
                caseSensitive: false,
                multiLine: false,
              );

              /// Classica
              RegExp regExpClassica = new RegExp(
                r"\d{5}",
                caseSensitive: false,
                multiLine: false,
              );

              /// Convert the results to strings
              var stringEuroMilhoes = regExpEuromilhoes
                  .stringMatch('${snapshot.data.items[0].description}')
                  .toString();
              Iterable<Match> matchesEuromilhoes =
                  singleKeyRegExpEuromilhoes.allMatches(stringEuroMilhoes);
              List euromilhoesNumberList = [];
              matchesEuromilhoes.forEach((m) {
                euromilhoesNumberList.add(m[0]);
              });

              var stringMilhao = regExpMilhao
                  .stringMatch('${snapshot.data.items[2].description}')
                  .toString();

              var stringTotoloto = regExpTotoloto
                  .stringMatch('${snapshot.data.items[3].description}')
                  .toString();
              Iterable<Match> matchesTotoloto =
                  singleKeyRegExpTotoloto.allMatches(stringTotoloto);
              List totolotoNumberList = [];
              matchesTotoloto.forEach((m) {
                totolotoNumberList.add(m[0]);
              });

              Iterable<Match> matchesClassica = regExpClassica
                  .allMatches('${snapshot.data.items[6].description}');
              List classicaList = [];
              matchesClassica.forEach((m) {
                classicaList.add(m[0]);
              });

              Iterable<Match> matchesPopular = regExpPopular
                  .allMatches('${snapshot.data.items[7].description}');
              List popularList = [];
              matchesPopular.forEach((m) {
                popularList.add(m[0]);
              });

              return new ListView(shrinkWrap: true, children: <Widget>[
                ///Container(
                ///  child: Text('Euromilhões ${stringEuroMilhoes}'),
                ///),
                EuromilhoesCard(
                  number1: euromilhoesNumberList[0],
                  number2: euromilhoesNumberList[1],
                  number3: euromilhoesNumberList[2],
                  number4: euromilhoesNumberList[3],
                  number5: euromilhoesNumberList[4],
                  star1: euromilhoesNumberList[5],
                  star2: euromilhoesNumberList[6],
                ),

                ///Container(
                ///  child: Text('M1lhão ${stringMilhao}'),
                ///),
                MilhaoCard(milhaoNumber: stringMilhao),

                ///Container(
                ///  child: Text('Popular ${snapshot.data.items[7].description}'),
                ///),
                PopularCard(
                    popularFirst: popularList[0],
                    popularSecond: popularList[1],
                    popularThird: popularList[2],
                    popularForth: popularList[3]),

                ///Container(
                ///  child: Text('Clássica ${snapshot.data.items[6].description}'),
                ///),
                ClassicaCard(
                    classicaFirst: classicaList[0],
                    classicaSecond: classicaList[1],
                    classicaThird: classicaList[2]),

                ///Container(
                ///  child: Text('Totoloto ${stringTotoloto}'),
                ///),
                TotolotoCard(
                    number1: totolotoNumberList[0],
                    number2: totolotoNumberList[1],
                    number3: totolotoNumberList[2],
                    number4: totolotoNumberList[3],
                    number5: totolotoNumberList[4],
                    luckNumber: totolotoNumberList[5]),
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
