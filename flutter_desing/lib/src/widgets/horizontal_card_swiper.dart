import 'package:flutter/material.dart';

class HorizontalCard extends StatelessWidget {
  final List<String> list;

  HorizontalCard({@required this.list});

  final _pageController = PageController(initialPage: 1, viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    _pageController.addListener(() {
      if (_pageController.position.pixels >=
          _pageController.position.maxScrollExtent - 200) {
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

  Widget _card(BuildContext context, String film) {
    final card = Container(
      margin: EdgeInsets.only(right: 15.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: FadeInImage(
                image: NetworkImage('sds'),
                placeholder: AssetImage('assets/img/no-image.jpg'),
                fit: BoxFit.cover,
                height: 160.0,
              )),
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
