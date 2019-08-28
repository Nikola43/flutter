/*
*/

/*

import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {
  @override
  _AvatarPageState createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  double _x = 1.0;
  double _y = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: AnimatedAlign(
            child: FloatingActionButton(
              child: Icon(Icons.threed_rotation),
              onPressed: () {
                setState(() {
                  if (_x == 0 && _y == 0) {
                    _x = 1;
                    _y = 1;
                  } else {
                    _x = 0;
                    _y = 0;
                  }
                });
              },
            ),
            duration: Duration(milliseconds: 500),
            alignment: Alignment(_x, _y)));
  }
}
 */