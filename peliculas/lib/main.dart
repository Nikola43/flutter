import 'package:flutter/material.dart';
import 'package:peliculas/src/pages/film_detail.dart';

import 'src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'film_detail': (BuildContext context) => EmailDetailPage(),
      },
    );
  }
}
