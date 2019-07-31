import 'package:flutter/material.dart';
import 'package:flutter_app/pages/counter_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build( context ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: CounterPage(),
      ),
    );
  }
}