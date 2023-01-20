// ignore_for_file: prefer_const_constructors

import 'package:component_dev_001/src/pages/home.dart';
import 'package:component_dev_001/src/pages/alert_page.dart';
import 'package:component_dev_001/src/pages/avatar_page.dart';
import 'package:component_dev_001/src/pages/card_page.dart';

import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAroutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => Home(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
  };
}
