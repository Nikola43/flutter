import 'package:flutter/material.dart';

Widget imageCard() {
  return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM-1024-80.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            fadeOutDuration: Duration(milliseconds: 200),
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Esta es una imagen de prueba que tiene un loader'),
          )
        ],
      ));
}
