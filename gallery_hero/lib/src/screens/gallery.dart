import 'package:flutter/material.dart';

class ImageGalleryPage extends StatefulWidget {
  final String title;
  //Custom constructor, add property : title
  @override
  ImageGalleryPage({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    return new ImageGalleryPageState(); //Return a state object
  }
}

class ImageGalleryPageState extends State<ImageGalleryPage> {
  //State must have "build" => return Widget
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(29), //Where is this function ?
      ),
    );
  }
}

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers =
      new List<Container>.generate(numberOfTiles, (int index) {
    //index = 0, 1, 2,...
    final imageName = index < 9
        ? 'images/image0${index + 1}.JPG'
        : 'images/image${index + 1}.JPG';
    return new Container(
      child: new Image.asset(imageName, fit: BoxFit.fill),
    );
  });
  return containers;
}
