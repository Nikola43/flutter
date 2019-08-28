import 'package:amazing_multiservices/src/pages/Login/index.dart';
import 'package:flutter/material.dart';
import 'src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Amazing Multiservices",
      initialRoute: '/',
      routes: getApplicationRoutes(),

      onGenerateRoute: (RouteSettings settings) {
        print('Ruta ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen());
      },

    );
  }
}
