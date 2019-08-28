import 'package:flutter/material.dart';

void showResourceDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text('Título del dialog'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido del dialog'),
            ],
          ),
          actions: <Widget>[
            FlatButton(
                child: Icon(Icons.add_location),
                onPressed: () => {}),
            FlatButton(
                child: Icon(Icons.airport_shuttle),
                onPressed: () => {}),
            FlatButton(
                child: Icon(Icons.person_add),
                onPressed: () => {}),
            FlatButton(
                child: Icon(Icons.add_alert),
                onPressed: () => {}),
          ],
        );
      });
}
