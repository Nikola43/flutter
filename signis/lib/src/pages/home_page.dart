import 'package:flutter/material.dart';
import 'package:signis/src/providers/menu_provider.dart';
import 'package:signis/src/utils/icon_string_util.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () => Navigator.pushNamed(context, 'main'),
          child: Text('Login'),
        ),
      )
    );
  }
}
