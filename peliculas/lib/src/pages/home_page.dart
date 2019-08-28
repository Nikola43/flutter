import 'package:flutter/material.dart';
import 'package:peliculas/src/widgets/card_swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Películas'),
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {

            },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _cardSwiper(),
          ],
        ),
      )
    );
  }
}

Widget _cardSwiper() {
  return CardSwiper(
    list: [1,2,3,4,5,6,7,8,9],
  );
}
