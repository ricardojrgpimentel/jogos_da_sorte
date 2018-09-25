import 'package:flutter/material.dart';
import 'utils/sidebar.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sobre'),
          backgroundColor: Colors.green[700],
        ),
        drawer: Sidebar(),
        body: ListView(
          children: <Widget>[
            Card(
                child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text('Desenvolvido por Ricardo Pimentel'),
                  Text('Com base na framework Flutter')
                ],
              ),
            )),
            Card(
              child: ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('Jogos da Sorte'),
                subtitle: Text('Versão: 1.0'),
              ),
            )
          ],
        ));
  }
}
