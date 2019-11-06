import 'package:dantes_gates_minimal_version/src/search/search_delegate.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Busca emails'),
        backgroundColor: Color.fromRGBO(105, 95, 145, 1),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          )
        ],
      ),
    );
  }
}
