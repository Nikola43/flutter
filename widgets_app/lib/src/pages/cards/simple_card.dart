import 'package:flutter/material.dart';
Widget simpleCard() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)
    ),
    child: Column(
      children: <Widget>[
        ListTile(
          title: Text('Título'),
          subtitle: Text(
              'Lorem fistrum está la cosa muy malar papaar papaar ahorarr sexuarl amatomaa ese hombree no puedor qué dise usteer. A wan qué dise usteer diodenoo a peich.'),
          leading: Icon(Icons.insert_photo, color: Colors.blue),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Aceptar'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
}