import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> list = [];

  _MenuProvider() {
    _loadJsonData();
  }

  _loadJsonData() {
    rootBundle.loadString("data/menu_opts.json").then((data) {
      print(data);
    });
  }
}

final menuProvider = new _MenuProvider();
