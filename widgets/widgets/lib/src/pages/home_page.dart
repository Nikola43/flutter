import 'package:flutter/material.dart';
import 'package:widgets/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        body: _showList());
  }

  Widget _showList() {
    return FutureBuilder(
      future: menuProvider.loadJsonData(),
      initialData: [],
      builder:
          (BuildContext context, AsyncSnapshot<List<dynamic>> asyncSnapshot) {
        return ListView(
          children: _loadList(asyncSnapshot.data),
        );
      },
    );
  }

  List<Widget> _loadList(List<dynamic> data) {
    final List<Widget> list = [];

    data.forEach((currentElement) {
      final tempWidget = ListTile(
        title: Text(currentElement['texto']),
        leading: Icon(Icons.accessibility_new, color: Colors.blue),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
        onTap: () {},
      );
      list..add(tempWidget)..add(Divider());
    });

    return list;
  }
}
