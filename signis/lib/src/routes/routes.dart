import 'package:flutter/material.dart';
import 'package:signis/src/pages/alert_page.dart';
import 'package:signis/src/pages/animated_container_page.dart';
import 'package:signis/src/pages/avatar_page.dart';
import 'package:signis/src/pages/home_page.dart';
import 'package:signis/src/pages/input_page.dart';
import 'package:signis/src/pages/list_page.dart';
import 'package:signis/src/pages/main_page.dart';
import 'package:signis/src/pages/resources_page.dart';
import 'package:signis/src/pages/slider_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'main': (BuildContext context) => MainPage(),
    'centers': (BuildContext context) => HomePage(),
    'resources': (BuildContext context) => ResourcesPage(),
  };
}
