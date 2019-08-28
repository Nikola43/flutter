import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  final List<dynamic> list;

  CardSwiper({@required this.list});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Swiper(
        itemWidth: _screenSize.width * 0.7, // 70% of screen width
        itemHeight: _screenSize.height * 0.5, // 50% of screen height,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
             child: Image.network(
               "http://via.placeholder.com/350x150",
               fit: BoxFit.cover,
             ),
          )
            ;
        },
        itemCount: list.length,
        layout: SwiperLayout.STACK,
      ),
    );
  }
}
