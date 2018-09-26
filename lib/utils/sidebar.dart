import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: new ListView(
      children: <Widget>[
        new DrawerHeader(
            child: new Image.asset(
              'images/full_logo.png',
              height: 20.0,
            ),
            decoration: BoxDecoration(
              color: Colors.green[700],
            )),
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
