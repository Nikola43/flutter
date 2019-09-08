import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class ImagesProvider {
  List<dynamic> list = [];

  Future<List<dynamic>> loadJsonData() async {
    final jsonFile = await rootBundle.loadString('assets/data/images.json');
    Map dataMap = json.decode(jsonFile);
    list = dataMap['images'];
    return list;
  }
}
