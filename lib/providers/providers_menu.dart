// ignore_for_file: unnecessary_new

import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _ProviderMenu {
  List<dynamic> getOption = [];
  _ProviderMenu() {
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    final value = await rootBundle.loadString('Data/json_menu.json');
    Map datos = json.decode(value);
    getOption = datos['rutas'];

    return getOption;
  }
}

final menuProvider = new _ProviderMenu();
