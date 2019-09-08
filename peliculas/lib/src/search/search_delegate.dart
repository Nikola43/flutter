import 'package:flutter/material.dart';
import 'package:peliculas/src/models/film.dart';
import 'package:peliculas/src/providers/peliculas_provider.dart';

class DataSearch extends SearchDelegate {
  String _selectedFilm = '';
  final filmsProvider = FilmsProvider();

  final films = [
    'Matrix',
    'Matrix Reloaded',
    'Matrix Revolution',
    'El silencio de los corderos',
    'Avatar',
    'Alicia en el pais de las maravillas',
    'La milla verde'
  ];

  final recentFilms = [
    'Matrix',
    'El silencio de los corderos',
    'Spiderman',
    'El bueno el feo y el malo',
    'Notorious big',
    'Men in black',
    'Harry Potter'
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        color: Colors.pinkAccent,
        child: Text(_selectedFilm),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    } else {
      return FutureBuilder(
          future: filmsProvider.searchFilms(query),
          initialData: [],
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              final films = snapshot.data;
              return ListView(
                children: films.map((Film film) {
                  return ListTile(
                    leading: FadeInImage(
                        placeholder: AssetImage('assets/img/no-image.jpg'),
                        image: NetworkImage(film.getPosterImg()),
                        width: 50.0,
                        fit: BoxFit.contain),
                    title: Text(film.title),
                    subtitle: Text(film.originalTitle),
                    onTap: () {
                      close(context, null);
                      film.uniqueId = '';
                      Navigator.pushNamed(context, 'film_detail',
                          arguments: film);
                    },
                  );
                }).toList(),
              );
            } else {
              return CircularProgressIndicator();
            }
          });
    }
  }

/*
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = (query.isEmpty
        ? recentFilms
        : films
            .where((film) => film.toLowerCase().startsWith(query.toLowerCase()))
            .toList());

    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            leading: Icon(Icons.movie),
            title: Text(films[i]),
            onTap: () {
              _selectedFilm = suggestionList[i];
              showResults(context);
            },
          );
        });
  }
   */
}
