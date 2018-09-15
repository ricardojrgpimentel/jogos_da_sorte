import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
        backgroundColor: Colors.green[700],
      ),
      body: Center(
          child: RaisedButton(
        child: Text('Launch screen'),
        onPressed: () {
          Navigator.pop(context, true);
        },
      )),
    );
  }
}
