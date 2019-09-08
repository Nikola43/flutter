import 'package:flutter/material.dart';
import 'package:peliculas/src/models/film.dart';
import 'package:peliculas/src/providers/peliculas_provider.dart';
import 'package:peliculas/src/search/search_delegate.dart';
import 'package:peliculas/src/widgets/card_swiper.dart';
import 'package:peliculas/src/widgets/horizontal_card_swiper.dart';

class HomePage extends StatelessWidget {
  final _filmsProvider = FilmsProvider();

  @override
  Widget build(BuildContext context) {
    _filmsProvider.getPopularList();

    return Scaffold(
        appBar: AppBar(
          title: Text('Películas'),
          backgroundColor: Colors.indigo,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
            )
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _filmsInCinemasCardSwiper(),
              _popularFilmsCardSwiper(context)
            ],
          ),
        ));
  }

  Widget _filmsInCinemasCardSwiper() {
    return FutureBuilder(
      future: _filmsProvider.getFilmsInCinemas(),
      builder: (BuildContext context, AsyncSnapshot<List<Film>> snapshot) {
        if (snapshot.hasData) {
          return CardSwiper(list: snapshot.data);
        } else {
          return Container(
              height: 400.0, child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }

  Widget _popularFilmsCardSwiper(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child:
                Text('Populares', style: Theme.of(context).textTheme.subhead),
          ),
          SizedBox(height: 5.0),
          StreamBuilder(
            stream: _filmsProvider.popularStream,
            builder:
                (BuildContext context, AsyncSnapshot<List<Film>> snapshot) {
              if (snapshot.hasData) {
                return Container(
                    child: HorizontalCard(
                  list: snapshot.data,
                  nextPage: _filmsProvider.getPopularList,
                ));
              } else {
                return Container(
                    height: 50.0,
                    child: Center(child: CircularProgressIndicator()));
              }
            },
          ),
        ],
      ),
    );
  }
}
