import 'package:flutter/material.dart';
import 'package:flutter_desing/src/screens/login_page.dart';
import 'src/screens/advanced_page.dart';
import 'src/screens/medium_page.dart';
import 'src/screens/simple_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'advanced_page',
      routes: {
        'simple_page' : (BuildContext context) => SimplePage(),
        'medium_page' : (BuildContext context) => MediumPage(),
        'advanced_page' : (BuildContext context) => AdvancedPage(),
        'simple_page' : (BuildContext context) => LoginScreen()
      },
    );
  }
}
