import 'package:flutter/material.dart';

Widget containerImageCard() {
  final card = Container(
      child: Column(
    children: <Widget>[
      FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'),
        image: NetworkImage(
            'https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg'),
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
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(10.0, -15.0)),
        ]),
    child: ClipRRect(
      child: card,
      borderRadius: BorderRadius.circular(10.0),
    ),
  );
}

// https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg
