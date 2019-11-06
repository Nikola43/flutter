import 'package:flutter/material.dart';
import 'package:gallery/src/screens/gallery.dart';

import 'src/screens/full_screen_image_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => ImageGalleryPage(),
        'full_screen_image_screen': (BuildContext context) => FullScreenImage()
      },
    );
  }
}
