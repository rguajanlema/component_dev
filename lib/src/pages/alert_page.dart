// ignore_for_file: prefer_const_constructors, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert App Bar'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Show Dialog'),
        onPressed: () {
          _showAlert(context);
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.red, shape: StadiumBorder()),
      )),
    );
  }

  Future _showAlert(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              Text("Contenido de la tarjeta"),
              FlutterLogo(
                size: 100.00,
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancelar')),
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Aceptar'))
          ],
        );
      });
}
