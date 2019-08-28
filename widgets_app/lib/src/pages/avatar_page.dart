import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar'),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: ClipOval(
                child: CircleAvatar(
                  child: FadeInImage(
                    fit: BoxFit.cover,
                    placeholder: AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage(
                        'https://www.aprendeconenergia.cl/wp-content/uploads/2016/12/nikolaTesla1.jpg'),
                    fadeInDuration: Duration(milliseconds: 200),
                    fadeOutDuration: Duration(milliseconds: 200),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Center(
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://www.aprendeconenergia.cl/wp-content/uploads/2016/12/nikolaTesla1.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            fadeOutDuration: Duration(milliseconds: 200),
          ),
        ));
  }
}
