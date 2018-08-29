import 'package:flutter/material.dart';

Widget contentBody() {
  return Container(
    color: Colors.green[700],
  );
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          title: Text('Jogos da Sorte'),
          backgroundColor: Colors.greenAccent,
        ),
        body: contentBody()),
  ));
}
