import 'package:amazing_multiservices/src/pages/Login/index.dart';
import 'package:amazing_multiservices/src/pages/main_screen.dart';
import 'package:flutter/material.dart';
import '../pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => LoginScreen(),
    '/main': (BuildContext context) => MainScreen(),
  };
}
