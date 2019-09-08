import 'package:http/http.dart' as http;
import 'package:peliculas/src/models/actor.dart';

import 'dart:convert';
import 'dart:async';

import 'package:peliculas/src/models/film.dart';

class FilmsProvider {
  final _apiKey = '7a84c82ce96015818790abc6b5083007';
  final _apiUrl = 'api.themoviedb.org';
  final _language = 'es-ES';

  int _popularPage = 0;
  bool _isLoading = false;

  List<Film> _popular = List();

  final _popularStreamController = StreamController<List<Film>>.broadcast();

  Function(List<Film>) get popularSink => _popularStreamController.sink.add;

  Stream<List<Film>> get popularStream => _popularStreamController.stream;

  void disposeStreams() {
    _popularStreamController?.close();
  }

  Future<List<Film>> _processResponse(Uri url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final filmsList = new Films.fromJsonList(decodedData['results']);
    return filmsList.list;
  }

  Future<List<Film>> getFilmsInCinemas() async {
    final url = Uri.https(_apiUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language});
    return await _processResponse(url);
  }

  Future<List<Film>> searchFilms(String userQuery) async {
    final url = Uri.https(_apiUrl, 'search/movie',
        {'api_key': _apiKey, 'language': _language, 'query': userQuery});
    return await _processResponse(url);
  }

  Future<List<Film>> getPopularList() async {
    if (_isLoading) {
      return [];
    } else {
      _isLoading = true;
    }
    _popularPage++;

    final url = Uri.https(_apiUrl, '3/movie/popular', {
      'api_key': _apiKey,
      'language': _language,
      'page': _popularPage.toString()
    });

    final resp = await _processResponse(url);
    _popular.addAll(resp);
    popularSink(_popular);
    _isLoading = false;
    return resp;
  }

  Future<List<Actor>> getCast(String filmId) async {
    final url = Uri.https(_apiUrl, '3/movie/$filmId/credits',
        {'api_key': _apiKey, 'language': _language});

    final response = await http.get(url);
    final decodedData = json.decode(response.body);
    final cast = Cast.fromJsonList(decodedData['cast']);

    return cast.list;
  }
}
