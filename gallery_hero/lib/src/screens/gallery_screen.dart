import 'package:flutter/material.dart';
import 'package:gallery_hero/src/providers/image_provider.dart' as p;

class GalleryPage extends StatelessWidget {
  final imageList = [];
  final imageProvider = p.ImageProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galería'),
      ),
      body: _showImages(context),
    );
  }

  Widget _showImages(BuildContext context) {
    return SingleChildScrollView(
        child: _showTable(context, imageProvider.getImageUrlList()));
  }

  Widget _showTable(BuildContext context, List<String> list) {
    //final columns = list.map((image) => _drawImage(context, list[0])).toList();

    List<Widget> columns = [Text(''),Text(''),Text(''),Text('')];
    print('vece');

    for (int i = 0; i < 4; i++) {
      print('URL $i' + ' ' + list[i]);
      columns[i] = _drawImage(context, list[i]);
    }

    final rows = list.map((image) => TableRow(children: columns)).toList();

    return Table(children: rows);
  }
}

Widget _drawImage(BuildContext context, String imageUrl) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context)
          .pushNamed('full_screen_image_screen', arguments: imageUrl);
    },
    child: Hero(
      tag: imageUrl,
      child: Container(
          width: 100.0,
          height: 100.0,
          margin: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl)),
              borderRadius: BorderRadius.all(Radius.circular(10.0)))),
    ),
  );
}
