import 'package:flutter/material.dart';

class ScreenModern extends StatefulWidget {
  @override
  _ScreenModernState createState() => _ScreenModernState();
}

class _ScreenModernState extends State<ScreenModern> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Colors.white, Colors.blue], radius: 1))),
        Container(
          height: 250,
          width: double.infinity,
          child: ClipRRect(
            borderRadius:
                BorderRadius.only(bottomLeft: const Radius.circular(50)),
            child: FadeInImage(
              image: NetworkImage('https://picsum.photos/id/1/4000/2000'),
              placeholder: AssetImage('assets/img/loading.gif'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
            top: 220,
            right: 25,
            child: Container(
              height: 56.0,
              width: 56.0,
              child: FittedBox(
                child: FloatingActionButton(onPressed: () {}),
              ),
            )),
      ],
    );
  }
}
