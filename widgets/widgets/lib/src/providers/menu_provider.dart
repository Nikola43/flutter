import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> list = [];

  _MenuProvider();

  Future<List<dynamic>> loadJsonData() async {
    final jsonFile = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(jsonFile);
    list = dataMap['rutas'];
    return list;
  }
}

final menuProvider = new _MenuProvider();
