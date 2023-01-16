// ignore_for_file: prefer_const_constructors

import 'package:component_dev_001/providers/providers_menu.dart';
import 'package:component_dev_001/utils/utils_function.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes Flutter'),
        ),
        body: _list());
  }

  Widget _list() {
    return FutureBuilder(
      initialData: [],
      future: menuProvider.loadData(),
      builder: (context, snapshot) {
        return ListView(children: _listItems(snapshot.data, context));
      },
    );
  }

  List<Widget> _listItems(List<dynamic>? optListMenu, BuildContext context) {
    final List<Widget> optValueWidget = [];
    optListMenu?.forEach((element) {
      final witgetvalue = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      optValueWidget.add(witgetvalue);
    });
    return optValueWidget;
  }
}
