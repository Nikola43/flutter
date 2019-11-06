import 'package:flutter/material.dart';
import 'package:gallery/models/images.dart';
import 'package:gallery/src/providers/image_provider.dart' as p;

class ImageGalleryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ImageGalleryPageState(); //Return a state object
  }
}

class ImageGalleryPageState extends State<ImageGalleryPage> {
  final imageProvider = p.ImageProvider();

  //State must have "build" => return Widget
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("s"),
      ),
      body: _buildGridTiles(context, imageProvider),
    );
  }
}

Widget _buildGridTiles(BuildContext context, p.ImageProvider imageProvider) {
  return new FutureBuilder<List<String>>(
    future: imageProvider.getNames(),
    builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
      if (snapshot.hasData) {
        List<Widget> list = [];
        for (int i = 0; i < snapshot.data.length; i++) {
          list.add(_drawImage(context, snapshot.data, i));
        }
        return GridView.extent(
            maxCrossAxisExtent: 150.0,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
            padding: const EdgeInsets.all(5.0),
            children: list);
      }
      return null; // unreachable
    },
  );
}

Widget _drawImage(BuildContext context, List<String> list, int index) {
  final images = Images(list: list, index: index);

  return Hero(
    tag: list[index],
    child: GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed('full_screen_image_screen', arguments: images);
      },
      child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(list[index])),
              borderRadius: BorderRadius.all(Radius.circular(10.0)))),
    ),
  );
}
