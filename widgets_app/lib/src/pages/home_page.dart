import 'package:flutter/material.dart';
import 'package:widgets_app/src/providers/menu_provider.dart';
import 'package:widgets_app/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _loadList(),
    );
  }

  Widget _loadList() {
    return FutureBuilder(
      future: menuProvider.loadJsonData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _optionsList(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _optionsList(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIconFromString(opt['icon'], Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
