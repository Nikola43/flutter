import 'package:flutter/material.dart';
import 'package:widgets_app/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],
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
