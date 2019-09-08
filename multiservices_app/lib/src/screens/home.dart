import 'package:flutter/material.dart';
import 'package:multiservices_app/src/models/service.dart';
import 'package:multiservices_app/src/providers/image_provider.dart';
import 'package:multiservices_app/src/widgets/rouded_avatar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageProvider = ImagesProvider();

    return Scaffold(
        body: SafeArea(
      child: Container(
          height: 100.0,
          width: double.infinity,
          child: FutureBuilder(
              future: imageProvider.loadJsonData(),
              initialData: [],
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int i) {
                        final image = Images.fromJson(snapshot.data[i]);
                        print(image.url);
                        return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            child: GestureDetector(
                              child: Hero(
                                tag: image.url,
                                child: RoundedAvatar(url: image.url),
                              ),
                              onTap: () {
                                image.url = image.url
                                    .replaceAll(new RegExp('200'), '1000');
                                Navigator.pushNamed(context, 'service_detail',
                                    arguments: image);
                              },
                            ));
                      });
                }
                print(snapshot.data);
                return CircularProgressIndicator();
              })),
    ));
  }
}
