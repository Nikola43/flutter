import 'package:amazing_multiservices/src/pages/Login/index.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: LoginScreen(),
    );
  }
}
