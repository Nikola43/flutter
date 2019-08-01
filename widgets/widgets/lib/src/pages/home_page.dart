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
    return ListView(
      children: _loadList(),
    );
  }

  List<Widget> _loadList() {
    print(menuProvider.list);
    return [ListTile(title: Text("dfdf"))];
  }
}
