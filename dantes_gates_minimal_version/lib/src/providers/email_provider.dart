import 'dart:async';
import 'package:dio/dio.dart';

class EmailProvider {
  var dio = Dio();

  Future<List> getNames(String query) async {
    final response = await dio.get('https://swapi.co/api/people');
    List tempList = new List();
    for (int i = 0; i < response.data['results'].length; i++) {
      tempList.add(response.data['results'][i]);
      return tempList;
    }
    // Future<List<Film>> _processResponse(Uri url) async {
    //   final resp = await http.get(url);
    //   final decodedData = json.decode(resp.body);
    //   final filmsList = new Films.fromJsonList(decodedData['results']);
    //   return filmsList.list;
    // }

    // Future<List<Film>> searchFilms(String userQuery) async {
    //   final url = Uri.https(_apiUrl, 'search/movie',
    //       {'api_key': _apiKey, 'language': _language, 'query': userQuery});
    //   return await _processResponse(url);
    // }
  }
}
