import 'package:flutter/material.dart';
import 'package:peliculas/src/models/film.dart';

class HorizontalCard extends StatelessWidget {
  final List<Film> list;
  final Function nextPage;

  HorizontalCard({@required this.list, @required this.nextPage});

  final _pageController = PageController(initialPage: 1, viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    _pageController.addListener(() {
      if (_pageController.position.pixels >=
          _pageController.position.maxScrollExtent - 200) {
        nextPage();
      }
    });

    return Container(
      height: _screenSize.height * 0.22,
      child: PageView.builder(
        pageSnapping: false,
        controller: _pageController,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int i) => _card(context, list[i]),
      ),
    );
  }

  Widget _card(BuildContext context, Film film) {
    film.uniqueId = '${film.id}-poster';
    final card = Container(
      margin: EdgeInsets.only(right: 15.0),
      child: Column(
        children: <Widget>[
          Hero(
              tag: film.uniqueId,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: FadeInImage(
                  image: NetworkImage(film.getPosterImg()),
                  placeholder: AssetImage('assets/img/no-image.jpg'),
                  fit: BoxFit.cover,
                  height: 160.0,
                ),
              )),
          Text(
            film.title,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );

    return GestureDetector(
      child: card,
      onTap: () {
        Navigator.pushNamed(context, 'film_detail', arguments: film);
      },
    );
  }
}
