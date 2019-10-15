import 'package:flutter/material.dart';
import 'package:gallery/models/images.dart';

class FullScreenImage extends StatefulWidget {
  @override
  _FullScreenImageState createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  PageController pageController;
  int a = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0, viewportFraction: 1);
  }

  @override
  Widget build(BuildContext context) {
    final Images images = ModalRoute.of(context).settings.arguments;

    pageController =
        PageController(initialPage: images.index, viewportFraction: 1);

    print(images.index);

    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Hero(
          tag: images.list[images.index],
          child: PageView.builder(
              controller: pageController,
              itemCount: images.list.length,
              itemBuilder: (context, index) {
                print(index);
                return imageSlider(
                    images.list, index, screenSize.width, screenSize.height);
              }),
        ),
        Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: AppBar(backgroundColor: Colors.transparent, elevation: 0.0),
        )
      ],
    );
  }

  Widget imageSlider(
      List<String> images, int index, double width, double height) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, widget) {
        return widget;
      },
      child: Container(
        width: width,
        height: height,
        child: Image(
          image: NetworkImage(images[index]),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';

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
        image: NetworkImage(imageHeroTag),
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

 */
