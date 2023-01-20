// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card App Bar'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[_cardl()],
      ),
    );
  }

  Widget _cardl() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text('Soy el subtitulo de lo que estas viendo'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Editar'))
            ],
          )
        ],
      ),
    );
  }
}
