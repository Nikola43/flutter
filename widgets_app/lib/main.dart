import 'package:flutter/material.dart';
import 'package:widgets_app/src/pages/alert_page.dart';
import 'package:widgets_app/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Widgets",
      initialRoute: '/',
      routes: getApplicationRoutes(),
      /*
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
      *
       */
    );
  }
}
