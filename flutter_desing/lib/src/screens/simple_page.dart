import 'package:flutter/material.dart';

class SimplePage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 15.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        _createHeaderImage(),
        _createHeaderSubtitle(),
        SizedBox(
          height: 25.0,
        ),
        _createActions(),
        SizedBox(height: 10.0),
        _createDescription(),
        _createDescription(),
        _createDescription(),
        _createDescription(),
        _createDescription(),
      ],
    )));
  }

  Widget _createHeaderImage() {
    return Container(
      height: 300.0,
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/img/header.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createHeaderSubtitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Ejemplo de header foto', style: titleStyle),
                  SizedBox(height: 7.0),
                  Text('Unas montañas muy bonitas', style: subtitleStyle),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createAction(Icons.call, Colors.blue, 'Llamar'),
        _createAction(Icons.add_location, Colors.blue, 'Ver en mapa'),
        _createAction(Icons.image, Colors.blue, 'Ver fotos')
      ],
    );
  }

  Widget _createAction(IconData icon, Color color, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: color,
          size: 40.0,
        ),
        SizedBox(height: 10.0),
        Text(text,
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold))
      ],
    );
  }

  Widget _createDescription() {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Text(
            'Bienvenido al Chiquito Ipsum, el generador de texto de relleno para tus diseños de antes de los dolores. Dale a Fistrum para que te salga ese pedaso de texto Chiquito en estado puro. Si te crees muy moderno dale a Latin que te lo pongo con cuarto y mitad de romanooo...Jarl!!',
            textAlign: TextAlign.justify,
          )),
    );
  }
}
