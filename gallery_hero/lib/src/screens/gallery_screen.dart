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
        body: SingleChildScrollView(child: _showTable(context)));
  }

  Widget _showTable(BuildContext context) {
    return FutureBuilder(
        future: imageProvider.getNames(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List<Widget> columns = [];
            print('-----------------');

            print('Tiene datos');

            List<String> images = snapshot.data;
            print(images.length);
            int columSize = 4;

            for (int i = 0; i < 4; i++) {
              print('URL $i' + ' ' + images[i]);
              columns.add(_drawImage(context, images[i]));
            }
            print('-----------------');

            //final columns =
            //    images.map((image) => _drawImage(context, image)).toList();
            final rows =
                images.map((image) => TableRow(children: columns)).toList();
            return Table(children: rows);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
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
