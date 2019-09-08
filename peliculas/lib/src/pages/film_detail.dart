import 'package:flutter/material.dart';
import 'package:peliculas/src/models/actor.dart';
import 'package:peliculas/src/models/film.dart';
import 'package:peliculas/src/providers/peliculas_provider.dart';

class FilmDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Film film = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _createAppBar(film),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 10.0),
              _createPosterTitle(context, film),
              _showDescription(film),
              _showDescription(film),
              _showDescription(film),
              _showDescription(film),
              _showDescription(film),
              _showDescription(film),
              _showCast(film)
            ]),
          ),
        ],
      ),
    );
  }

  Widget _createAppBar(Film film) {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.indigo,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          film.title,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        background: FadeInImage(
          image: NetworkImage(film.getBackgroundImg()),
          placeholder: AssetImage('assets/img/loading.gif'),
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 150),
        ),
      ),
    );
  }

  Widget _showDescription(Film film) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Text(
        film.overview,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _createPosterTitle(BuildContext context, Film film) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Hero(
            tag: film.uniqueId,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image(
                image: NetworkImage(film.getPosterImg()),
                height: 150.0,
              ),
            ),
          ),
          SizedBox(width: 20.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(film.title,
                    style: Theme.of(context).textTheme.title,
                    overflow: TextOverflow.ellipsis),
                Text(film.originalTitle,
                    style: Theme.of(context).textTheme.subtitle,
                    overflow: TextOverflow.ellipsis),
                Row(
                  children: <Widget>[
                    Icon(Icons.star_border),
                    Text(film.voteAverage.toString(),
                        style: Theme.of(context).textTheme.title),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _showCast(Film film) {
    final filmsProvider = FilmsProvider();
    return FutureBuilder(
        future: filmsProvider.getCast(film.id.toString()),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
          if (asyncSnapshot.hasData) {
            return _createActorsPageView(asyncSnapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Widget _createActorsPageView(List<Actor> actors) {
    return SizedBox(
      height: 200.0,
      child: PageView.builder(
          pageSnapping: false,
          controller: PageController(viewportFraction: 0.3, initialPage: 1),
          itemCount: actors.length,
          itemBuilder: (BuildContext context, int i) =>
              _createActorCard(actors[i])),
    );
  }

  Widget _createActorCard(Actor actor) {
    return Container(
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            child: FadeInImage(
              placeholder: AssetImage('assets/img/no-image.jpg'),
              image: NetworkImage(actor.getPicture()),
              fit: BoxFit.cover,
            ),
          ),
          Text(actor.name, overflow: TextOverflow.ellipsis)
        ],
      ),
    );
  }
}
