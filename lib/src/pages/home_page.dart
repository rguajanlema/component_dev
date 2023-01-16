// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_collection_literals

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final itemsOptions = [
    "Uno",
    "Dos",
    "Tres",
    "Cuatro",
    "Cinco",
    "Seis",
    "Site",
    "Ocho",
    "Nueve",
    "Diez",
    "Once",
    "Doce"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: ListView(
            children: _setItems(),
          )),
    );
  }

  List<Widget> _setItems() {
    // ignore: deprecated_member_use
    List<Widget> list = <Widget>[];
    for (var opt in itemsOptions) {
      final itemListTitle = ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text(opt),
        subtitle: Text('Test...'),
        trailing: Icon(Icons.keyboard_arrow_right),
      );
      list.add(itemListTitle);
      list.add(Divider());
    }
    return list;
  }
}
