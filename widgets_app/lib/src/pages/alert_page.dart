import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Show alert'),
          shape: StadiumBorder(),
          onPressed: () {
            showAlert(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),            title: Text('Título del dialog'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido del dialog'),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  child: Text('Cancelar'),
                  onPressed: () => Navigator.of(context).pop()),
              FlatButton(
                  child: Text('Aceptar'),
                  onPressed: () => Navigator.of(context).pop())
            ],
          );
        });
  }
}
