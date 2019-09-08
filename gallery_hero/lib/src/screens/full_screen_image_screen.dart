import 'package:flutter/material.dart';
import 'package:gallery_hero/src/providers/image_provider.dart' as p;

class FullScreenImage extends StatefulWidget {
  @override
  _FullScreenImageState createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  int screenWidth = 0;
  int screenHeight = 0;
  String imageHeroTag = '';

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width.toInt();
    screenHeight = MediaQuery.of(context).size.height.toInt();
    imageHeroTag = ModalRoute.of(context).settings.arguments;

    return Hero(
      tag: imageHeroTag,
      child: Scaffold(body: _fullScreenImage(context)),
    );
  }

  Widget _fullScreenImage(BuildContext context) {
    return Stack(children: <Widget>[
      Image(
        image: NetworkImage('https://picsum.photos/id/1/$screenWidth/$screenHeight'),
      ),
      Positioned(
        top: 0.0,
        left: 0.0,
        right: 0.0,
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text("Doctor Form"),
        ),
      ),
    ]);
  }
}
