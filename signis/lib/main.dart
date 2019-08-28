import 'package:flutter/material.dart';

import 'src/routes/routes.dart';

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
