import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: new ListView(
      children: <Widget>[
        new DrawerHeader(
          child: new Text('Jogos da Sorte'),
        ),
        new ListTile(
          title: new Text('Resultados'),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        new Divider(),
        new ListTile(
          title: new Text('About'),
          onTap: () {
            Navigator.pushNamed(context, '/about');
          },
        ),
      ],
    ));
  }
}
