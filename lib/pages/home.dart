// ignore_for_file: prefer_const_constructors

import 'package:component_dev_001/providers/providers_menu.dart';
import 'package:component_dev_001/utils/utils_function.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Componentes Flutter'),
          ),
          body: _list()),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      builder: (context, snapshot) {
        print(snapshot.data);
        return ListView(children: _listItems(snapshot.data));
      },
    );
  }

  List<Widget> _listItems(List<dynamic>? optListMenu) {
    final List<Widget> optValueWidget = [];
    optListMenu?.forEach((element) {
      final witgetvalue = ListTile(
        title: element['Texto'],
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {},
      );
      optValueWidget.add(witgetvalue);
    });
    return optValueWidget;
  }
}
