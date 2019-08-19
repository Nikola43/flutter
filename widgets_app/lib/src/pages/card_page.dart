import 'package:flutter/material.dart';
import 'package:widgets_app/src/pages/cards/container_image_card.dart';
import 'package:widgets_app/src/pages/cards/image_card.dart';
import 'package:widgets_app/src/pages/cards/simple_card.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: _loadCards(),
    );
  }

  ListView _loadCards() {
    return ListView(
      children: <Widget>[simpleCard(), imageCard(), containerImageCard()],
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
    );
  }
}
