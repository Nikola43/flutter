import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:peliculas/src/models/film.dart';

class CardSwiper extends StatelessWidget {
  final List<Film> list;

  CardSwiper({@required this.list});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      child: Swiper(
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context, int index) {
          list[index].uniqueId = '${list[index].id}-cards';
          return Hero(
            tag: list[index].uniqueId,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'film_detail',
                      arguments: list[index]),
                  child: FadeInImage(
                    image: NetworkImage(list[index].getPosterImg()),
                    placeholder: AssetImage('assets/img/no-image.jpg'),
                    fit: BoxFit.cover,
                  ),
                )),
          );
        },
        itemCount: list.length,
        layout: SwiperLayout.STACK,
      ),
    );
  }
}
